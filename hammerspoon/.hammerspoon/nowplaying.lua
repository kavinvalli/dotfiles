local nowplaying = {}

local drawing = require("hs.drawing")
local timer = require("hs.timer")
local geometry = require("hs.geometry")

-- State
local overlayElements = {}
local hideTimer = nil
local pollTimer = nil
local lastTrack = ""

-- Config
local DISPLAY_SECONDS = 3
local POLL_INTERVAL = 2
local WIDTH = 340
local HEIGHT = 60
local MARGIN = 16
local CORNER_RADIUS = 10

local function getTrackInfo()
	local ok, result = hs.osascript.javascript([[
    var output = null;
    var apps = ["Music", "Spotify"];
    for (var i = 0; i < apps.length; i++) {
      var app = Application(apps[i]);
      try {
        if (app.running() && app.playerState() === "playing") {
          var track = app.currentTrack;
          output = { title: track.name(), artist: track.artist(), app: apps[i] };
          break;
        }
      } catch(e) {}
    }
    output;
  ]])
	if ok and result and type(result) == "table" then
		return result
	end
	return nil
end

local function hideOverlay()
	for _, el in ipairs(overlayElements) do
		el:delete()
	end
	overlayElements = {}
	if hideTimer then
		hideTimer:stop()
		hideTimer = nil
	end
end

local function showOverlay(title, artist)
	hideOverlay()

	local screen = hs.screen.mainScreen()
	local frame = screen:frame()
	local x = frame.x + frame.w - WIDTH - MARGIN
	local y = frame.y + MARGIN

	-- Background
	local bg = drawing.rectangle(geometry.rect(x, y, WIDTH, HEIGHT))
	bg:setFillColor({ red = 0, green = 0, blue = 0, alpha = 1 })
	bg:setStrokeColor({ red = 0.36, green = 0.36, blue = 0.36, alpha = 1 })
	bg:setStrokeWidth(2)
	bg:setRoundedRectRadii(0, 0)
	bg:setLevel(drawing.windowLevels.overlay)
	bg:setBehavior(drawing.windowBehaviors.canJoinAllSpaces)
	bg:show()

	-- Title
	local titleEl = drawing.text(geometry.rect(x + MARGIN, y + 12, WIDTH - MARGIN * 2, 20), "\u{266B} " .. title)
	titleEl:setTextColor({ red = 1, green = 0.78, blue = 0.6, alpha = 1 })
	titleEl:setTextFont("GeistMono-Regular")
	titleEl:setTextSize(12)
	titleEl:setLevel(drawing.windowLevels.overlay)
	titleEl:setBehavior(drawing.windowBehaviors.canJoinAllSpaces)
	titleEl:show()

	-- Artist
	local artistEl = drawing.text(geometry.rect(x + MARGIN, y + 34, WIDTH - MARGIN * 2, 18), artist)
	artistEl:setTextColor({ red = 0.5, green = 0.5, blue = 0.5, alpha = 1 })
	artistEl:setTextFont("GeistMono-Regular")
	artistEl:setTextSize(11)
	artistEl:setLevel(drawing.windowLevels.overlay)
	artistEl:setBehavior(drawing.windowBehaviors.canJoinAllSpaces)
	artistEl:show()

	overlayElements = { bg, titleEl, artistEl }

	hideTimer = timer.doAfter(DISPLAY_SECONDS, hideOverlay)
end

local function poll()
	local info = getTrackInfo()
	if info and info.title then
		local key = info.title .. " — " .. info.artist
		if key ~= lastTrack then
			lastTrack = key
			showOverlay(info.title, info.artist)
		end
	else
		lastTrack = ""
	end
end

function nowplaying.start()
	poll()
	pollTimer = timer.doEvery(POLL_INTERVAL, poll)
end

function nowplaying.stop()
	if pollTimer then
		pollTimer:stop()
		pollTimer = nil
	end
	hideOverlay()
	lastTrack = ""
end

return nowplaying
