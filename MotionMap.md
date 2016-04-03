# MotionMap Class #

In this section we describe the MotionMap class which assists students in constructing motion maps using either arrows (measuring a quantity) or “breadcrumbs” (with timestamps).

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
motionMap = MotionMap(cart, tf, 5, markerScale=0.5)
```

Importing from physutil makes all the Physics utility tools including the MotionMap class available for use in the current program.

This example sets up a motion map set to track the “cart” object. The timing data is set up for when the cart is eventually put into motion. The variable ''tf'' represents the expected tFinal or the time when the motion is set to stop, and it is necessary in the motion map instantiation in order to space marker placement over time. The variable ''5'' designates the number of markers to be placed during the duration of the object’s motion. The variable ''markerScale'' designates the size of the markers to be placed (the default is ''markerScale=1''). If code were then added to this program that put the object in motion via a while loop and the program was run, the graphic display window display something similar to this at the end of the object’s motion:

![https://python-physutil.googlecode.com/svn/wiki/images/motionmap.png](https://python-physutil.googlecode.com/svn/wiki/images/motionmap.png)

This motion map image shows that the green “cart” object has moved from left to right and dropped 5 red arrow markers throughout the duration of the motion. Notice that by default the motion map used red arrow markers labeled in numerical order. This next example shows how to set up a more complex motion map and how to change these defaults:


```
motionMap = MotionMap(cart, tf, 5, markerType=”breadcrumbs”, markerColor=color.blue, labelMarkerOrder=False, dropTime=true, timeOffset=vector(0,1,0))
```

In this example a motion map is created that tracks the motion of the “cart” object by dropping 5 blue “breadcrumbs.” The variable ''markerType'' designates the type of markers to be dropped on the motion map. The two marker types are ''“arrow”'' which are the default type, and ''“breadcrumbs”'' which are basically points. The variable ''markerColor'' sets the color of the markers being dropped. The variable ''labelMarkerOrder'' toggles on and off the numerical labeling of the order of the markers. The default value of ''labelMarkerOrder'' is ''True'' which turns the labels on, so in this example they are turned off. The variable ''dropTime'' determines whether a timestamp is placed along with the markers (this parameter is set to ''False'' by default). The variable ''timeOffset'' is only active if ''dropTime'' is set to ''True'' and it determines a vector by which to offset the timestamp label from the marker. If an object were set in motion within the motion map set up in this example then the graphic display window would look similar to the following:

![https://python-physutil.googlecode.com/svn/wiki/images/breadcrumbs.png](https://python-physutil.googlecode.com/svn/wiki/images/breadcrumbs.png)

### Updating MotionMap in a Loop ###

In order to see your motion map you must update the motion map in a while loop. If your motion map is an arrow motion map, then your ''update'' function must have two parameters: the time ''t'' and the vector quantity being mapped by the arrows. The following is an example of what an ''update'' call would look like for the first example above:

```
motionMap.update(t, vcart)
```

In this example, the arrows map the vector quantity ''vcart'' representing the “cart” object’s velocity.

If your motion map is a breadcrumb map, then your ''update'' function only needs the time parameter. The following is an example of what an ''update'' call would look like for the second example above:

```
motionMap.update(t)
```