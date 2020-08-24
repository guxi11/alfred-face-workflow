on run argv
  set imagePath to item 1 of argv

  -- join the image path
  repeat with a from 2 to length of argv
    set theCurrentListItem to item a of argv
    -- Process the current list item
    set imagePath to imagePath & " " & theCurrentListItem
  end repeat

  set image to POSIX file imagePath
  tell app "Finder" to set the clipboard to image
end run