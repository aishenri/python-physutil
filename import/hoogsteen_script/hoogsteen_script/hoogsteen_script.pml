	## General Commands ##


## Header: General Commands ##
# delete all objects and reset pymol
reinitialize
# set the background color to white
bg_color white
# make the background transparent for ray trace 
set ray_opaque_background, 0
# set the ray trace mode
# normal color
set ray_trace_mode, 0
# normal color + black outline
#set ray_trace_mode,  1
# black outline only
#set ray_trace_mode,  2
# turn off shadows during ray trace
set ray_shadows, 0
# set the mouse mode for laptop.
config_mouse one_button
# get rid of double bonds and skinny bonds to H
set stick_h_scale, 1
set valence, 0
# high quality surfaces
set surface_quality, 3
## End of Header: General Commands ##


# 			coordinates from Subrirana
#        AUTH   N.G.A.ABRESCIA,A.THOMPSON,T.HUYNH-DINH,J.A.SUBIRANA          
#        TITL   CRYSTAL STRUCTURE OF AN ANTIPARALLEL DNA FRAGMENT            
#        TITL 2 WITH HOOGSTEEN BASE PAIRING                                  
#        REF    PROC.NATL.ACAD.SCI.USA        V.  99  2806 2002              
#        REFN                   ISSN 0027-8424                               
#        PMID   11880632                                                     
#        DOI    10.1073/PNAS.052675499                                       


load files/1gqu.pdb, duplex 
h_add duplex and not (name OP2 or name OP1)
distance hbond1, (duplex and resn DA), (duplex and (resn DT or resn BRU)), 2.4
distance hbond1, (duplex and resn DG), (duplex and resn DC), 2.4

remove resn HOH


create hoogsteen, resi 1 or resi 12
h_add hoogsteen
distance hbond2, (hoogsteen and resn DA), (hoogsteen and resn DT), 2.2
color black, hbond2
color wheat, name C* and hoogsteen
color gray60, name C* and duplex


hide everything
show stick, duplex
disable duplex
disable hbond1

show stick, hoogsteen
color black, hbond*
show dashes, hbond*
show labels, hbond*
set label_size, -.25

set_view (\
     1.000000000,    0.000000000,    0.000000000,\
     0.000000000,    1.000000000,    0.000000000,\
     0.000000000,    0.000000000,    1.000000000,\
    -0.000000447,    0.000000140,  -35.039432526,\
    13.939747810,   25.590175629,   17.814601898,\
    32.686237335,   37.392642975,  -20.000000000 )
### cut above here and paste into script ### 