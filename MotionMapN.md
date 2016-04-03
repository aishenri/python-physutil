# MotionMapN Class #

In this section we describe the MotionMapN class which assists students in constructing motion maps using either arrows (measuring a quantity) or “breadcrumbs” (with timestamps).

Setting Up the Motion Map
Here is an example of how to set up a simple motion map:

```
from physutil import *

#Create the object to be in motion and set its velocity
cart = box(pos=vector(-1.0,0,0), size=(0.1,0.04,0.06), color=color.green)

vcart = vector(0.5,0,0)
	
#Set up timing data
deltat = 0.01
t = 0
tf = 4

#Set up motion map
motionMap = MotionMapN(cart, deltat, 5, markerScale=0.5)
```

Importing from physutil makes all the Physics utility tools including the MotionMapN class available for use in the current program.

This example sets up a motion map set to track the “cart” object. The timing data is set up for when the cart is eventually put into motion. The variable ''deltat'' represents the time between steps. The variable ''5'' designates the number of steps between markers. The variable ''markerScale'' designates the size of the markers to be placed (the default is ''markerScale=1''). If code were then added to this program that put the object in motion via a while loop and the program was run, the graphic display window display something similar to this at the end of the object’s motion:

![https://python-physutil.googlecode.com/svn/wiki/images/motionmap.png](https://python-physutil.googlecode.com/svn/wiki/images/motionmap.png)

This motion map image shows that the green “cart” object has moved from left to right and dropped 5 red arrow markers throughout the duration of the motion. Notice that by default the motion map used red arrow markers labeled in numerical order.

Besides this small change (using "deltat" and the number of steps between markers) MotionMapN can be used in the same way as MotionMap.