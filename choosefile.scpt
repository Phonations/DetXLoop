on run {input, parameters}
  set output to input
  if ((count input) = 0) then
    set output to (choose file without invisibles)
  end if
  return output
end run

