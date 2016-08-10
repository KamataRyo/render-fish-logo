#!/usr/bin/env fish
# The colored ascii art is originated by [xfix](https://github.com/xfix) at https://github.com/fish-shell/fish-shell/issues/114

function render_fish_logo --description "render fish logo<render_fish_logo color1 color2 color3>"
  # default colors
  set colors[1] F00
  set colors[2] FF7F00
  set colors[3] FF0

  set i 1
  for arg in $argv
    set colors[$i] $arg
    set i (math "$i+1")
  end


  echo "                 "(set_color $colors[1])"___"
  echo "  ___======____="(set_color $colors[2])"-"(set_color $colors[3])"-"(set_color $colors[2])"-="(set_color $colors[1])")"
  echo "/T            \_"(set_color $colors[3])"--="(set_color $colors[2])"=="(set_color $colors[1])")"
  echo "[ \ "(set_color $colors[2])"("(set_color $colors[3])"0"(set_color $colors[2])")   "(set_color $colors[1])"\~    \_"(set_color $colors[3])"-="(set_color $colors[2])"="(set_color $colors[1])")"
  echo " \      / )J"(set_color $colors[2])"~~    \\"(set_color $colors[3])"-="(set_color $colors[1])")"
  echo "  \\\\___/  )JJ"(set_color $colors[2])"~"(set_color $colors[3])"~~   "(set_color $colors[1])"\)"
  echo "   \_____/JJJ"(set_color $colors[2])"~~"(set_color $colors[3])"~~    "(set_color $colors[1])"\\"
  echo "   "(set_color $colors[2])"/ "(set_color $colors[3])"\  "(set_color $colors[3])", \\"(set_color $colors[1])"J"(set_color $colors[2])"~~~"(set_color $colors[3])"~~     "(set_color $colors[2])"\\"
  echo "  (-"(set_color $colors[3])"\)"(set_color $colors[1])"\="(set_color $colors[2])"|"(set_color $colors[3])"\\\\\\"(set_color $colors[2])"~~"(set_color $colors[3])"~~       "(set_color $colors[2])"L_"(set_color $colors[3])"_"
  echo "  "(set_color $colors[2])"("(set_color $colors[1])"\\"(set_color $colors[2])"\\)  ("(set_color $colors[3])"\\"(set_color $colors[2])"\\\)"(set_color $colors[1])"_           "(set_color $colors[3])"\=="(set_color $colors[2])"__"
  echo "   "(set_color $colors[1])"\V    "(set_color $colors[2])"\\\\"(set_color $colors[1])"\) =="(set_color $colors[2])"=_____   "(set_color $colors[3])"\\\\\\\\"(set_color $colors[2])"\\\\"
  echo "          "(set_color $colors[1])"\V)     \_) "(set_color $colors[2])"\\\\"(set_color $colors[3])"\\\\JJ\\"(set_color $colors[2])"J\)"
  echo "                      "(set_color $colors[1])"/"(set_color $colors[2])"J"(set_color $colors[3])"\\"(set_color $colors[2])"J"(set_color $colors[1])"T\\"(set_color $colors[2])"JJJ"(set_color $colors[1])"J)"
  echo "                      (J"(set_color $colors[2])"JJ"(set_color $colors[1])"| \UUU)"
  echo "                       (UU)"(set_color normal)
end


render_fish_logo $argv
