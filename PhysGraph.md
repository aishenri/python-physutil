# PhysGraph Class #

In this section we describe the PhysGraph class which assists students in creating dynamic graphs with advanced functionality.

## Setting Up the Graph ##

Here is an example of how to set up a simple graph:

```
from physutil import *
from visual.graph import *

graphExample = PhysGraph(numPlots=1)
```

Importing from physutil makes all the Physics utility tools including the PhysGraph available for use in the current program and visual.graph makes available all Visual objects plus the graph plotting module.

The variable ''numPlots'' represents the number of dependent variables that you want to plot in relation to the dependent variable.  However, this variable is optional.  If you do not type anything, the program will only make one plot by default.  The lines of code below are all synonymous and work equally well for only one plot.

```
graphExample = PhysGraph(numPlots=1)
graphExample = PhysGraph(1)
graphExample = PhysGraph() 
```

## Updating PhysGraph in a Loop ##

In order to see your graph you will need to update PhysGraph in the while loop. To plot the cart object’s x-position vs. time (t) using PhysGraph, type this in the loop:

```
graphExample.plot(t, cart.pos.x)
```

![https://python-physutil.googlecode.com/svn/wiki/images/graph.png](https://python-physutil.googlecode.com/svn/wiki/images/graph.png)

## Creating Multiple Plots on Graph ##
If you want to create multiple plots, first specify how many plots you want PhysGraph to create.  In this example we want it to print two plots:

```
graphExample = PhysGraph(2)
```

Then, specify which values you want PhysGraph to plot in the while loop.  In this example it will plot the cart’s x-position (this values would have to be instantiated earlier in the code) compared to time (t).  It also draws a horizontal line at 2:

```
graphExample.plot(t, cart.pos.x, 2)
```

![https://python-physutil.googlecode.com/svn/wiki/images/graph2.png](https://python-physutil.googlecode.com/svn/wiki/images/graph2.png)

By default, colors for each plot are chosen in this order: starting with red, green, blue, yellow, orange, cyan, magenta, and finally white.

## Formatting the Plots ##
Many of the vPython plotting options have been enumerated in PhysGraph.
By adding the following arguments to the initial call to PhysGraph you can change those parameters.

**title='...some text...'**<br>
Use this parameter to add a title to the plotting window.<br>
<br>
<b>xlabel='...some text...'</b><br>
Use this parameter to add a title to the x-axis.<br>
<br>
<b>ylabel='...some text...'</b><br>
Use this parameter to add a title to the y-axis.<br>
<br>
<b>backgroundColor = XXX</b><br>
Use this parameter to change the background color of the plots.  The default color is white.  You can either specify some standard colors using the color.white, color.red, etc. key-words or by specifying an RGB tupple [0-1,0-1,0-1].<br>
<br>
<b>graphColors=<a href='.md'>.md</a></b><br>
Use this parameter to specify the color order of the plots being displayed.  The list may include color key-words (color.red, etc.) or RGB tupples [0-1,0-1,0-1].<br>
<br>
<b>radius= ###</b><br>
Size of the curve being drawn in the plot.  The units are in terms of the scale of the window.  The default is radius=0.015.  A value of radius=0 will tell the plotting system to simply plot a 1 pixel wide line, independent of the plot scale.<br>
<br>
<b>dot= True/False</b><br>
Specify if the data points should be plotted.<br>
<br>
<b>dot_size= #</b><br>
Size, in pixels, of data points if dot=True is specified.  Default is dot_size=8.