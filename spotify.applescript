#!/usr/bin/osascript
on run
  set info to {"Sorry","Not Playing"}
  set tym to 0
  tell application "System Events"
    set num to count (every process whose name is "Spotify")
  end tell
  if num > 0 then
    tell application "Spotify"
      if player state is playing then
        set tym to (duration of current track /1000 div 1)-(player position div 1)
        set item 1 of info to artist of current track
        set item 2 of info to name of current track
      end if

    end tell
  end if
  return {info,tym}
end run
