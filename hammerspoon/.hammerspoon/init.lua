stackline = require "stackline"
stackline:init()

require("hs.ipc")

Khyper = {"ctrl", "alt"}
KPhyper = {"cmd", "alt", "ctrl"}
KPhypershift = {"cmd", "alt", "ctrl", "shift"}

local spotify = require "spotify"
local alttab = require "alttab"

local applicationHotkeys = {
  b = 'Brave Browser',
  i = 'iTerm',
  w = 'Whatsapp',
  d = 'Discord',
  f = 'Finder'
}
for key, app in pairs(applicationHotkeys) do
  hs.hotkey.bind(Khyper, key, function()
    hs.application.launchOrFocus(app)
  end)
end

-- Spotify
hs.hotkey.bind(KPhypershift, "S", spotify.toggle)
hs.hotkey.bind(KPhypershift, "D", spotify.nextNotify)
hs.hotkey.bind(KPhypershift, "A", spotify.prevNotify)

--AltTab
hs.hotkey.bind(KPhypershift, "`", alttab.changeFocus)
hs.hotkey.bind(KPhyper, '`', alttab.switchDev)
hs.hotkey.bind(KPhyper, 'tab', alttab.switch)
