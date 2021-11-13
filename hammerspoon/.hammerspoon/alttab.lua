-- Based on https://github.com/selectnull/hammerspoon-alttab
local application = require "hs.application"
local alttab = {}

local devSwitcher = hs.window.switcher.new{"Brave Browser", "iTerm2", "WhatsApp", "Discord"}
local switcher = hs.window.switcher.new()

hs.window.switcher.ui.fontName = "SF Pro"
hs.window.switcher.ui.thumbnailSize = 64


function alttab.changeFocus()
  focusScreen(hs.window.focusedWindow():screen():next())
end

function alttab.switchDev()
  devSwitcher:next()
end

function alttab.switch()
  switcher:next()
end

--Predicate that checks if a window belongs to a screen
function isInScreen(screen, win)
  return win:screen() == screen
end

function focusScreen(screen)
  --Get windows within screen, ordered from front to back.
  --If no windows exist, bring focus to desktop. Otherwise, set focus on
  --front-most application window.
  local windows = hs.fnutils.filter(
      hs.window.orderedWindows(),
      hs.fnutils.partial(isInScreen, screen))
  local windowToFocus = #windows > 0 and windows[1] or hs.window.desktop()
  windowToFocus:focus()

  -- Move mouse to center of screen
  local pt = hs.geometry.rectMidPoint(screen:fullFrame())
  hs.mouse.setAbsolutePosition(pt)
end

return alttab
