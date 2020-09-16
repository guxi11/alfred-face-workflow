on run argv
  set pwd to item 1 of argv

  tell application "Terminal"
    activate
    set currentTab to do script ""
    do script "cd " & pwd in currentTab
    do script "python3 image2gif.py" in currentTab
  end tell

end run