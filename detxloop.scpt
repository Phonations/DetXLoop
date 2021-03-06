on run {input, parameters}
  set f to (item 1 of input)
  tell application "System Events"
    set fileName to (path of f)

    set xml_data to contents of XML file fileName
    tell xml_data
      set root to XML element 1
      set body to XML element "body" of root

      repeat with loop in (XML elements whose name is "loop") of body

        set tc to (value of XML attribute "timecode" of loop)

        log tc
        keystroke "*"
        keystroke tc
        keystroke return

        key code 76
        keystroke return

      end repeat
    end tell
  end tell
  return input
end run

