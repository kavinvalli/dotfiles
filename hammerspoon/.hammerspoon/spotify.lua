local spotify = {}

function spotify.toggle()
  if (hs.spotify.isPlaying()) then
    hs.spotify.pause()
  else
    hs.spotify.play()
    -- hs.timer.doAfter(1, spotify.playing)
  end
end

function spotify.playing()
    local album = hs.spotify.getCurrentAlbum()
    local artist = hs.spotify.getCurrentArtist()
    local track = hs.spotify.getCurrentTrack()
    local message = "Now playing: \n" .. artist .. " - " .. track .. " - " .. album

    if hs.spotify.isPlaying() ~= true then
        message = message .. "\n Paused"
    end

    hs.notify.new({title=track, informativeText=artist}):send()
end

function spotify.nextNotify()
  hs.spotify.next()
  -- hs.timer.doAfter(1, spotify.playing)
end

function spotify.prevNotify()
  hs.spotify.previous()
  -- hs.timer.doAfter(1, spotify.playing)
end

return spotify
