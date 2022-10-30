# get structure
fetch 2x19, async=0

# representations
hide
show cartoon
show sticks, resn GTP
show spheres, name MG

# colors
color yellow, chain A
color green, chain B
color black, resn GTP or name MG

# background color
bg_color white

# camera view
set_view (\
   -0.932129204,    0.324005187,    0.161723644,\
   -0.014831773,    0.412064612,   -0.911032856,\
   -0.361820698,   -0.851599276,   -0.379291862,\
    0.000000000,    0.000000000, -270.411346436,\
  -47.325820923,   24.489761353,   17.685741425,\
  213.194366455,  327.628326416,  -20.000000000 )

# settings
set cartoon_fancy_helices
