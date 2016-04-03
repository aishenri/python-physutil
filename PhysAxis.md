# PhysAxis Class #

In this section we describe the PhysAxis class which assists students in creating dynamic axes for their models.

## Setting Up the Axis ##

Here is an example of how to set up a simple axis:

```
from physutil import *

track = box(pos=vector(0,-0.05,0), size=(5.0,0.05,0.10), color=color.white)
axis = PhysAxis(track, 10)
```

Importing from physutil makes all the Physics utility tools including the PhysAxis available for use in the current program.

In this example an axis is created that is oriented based on the “track” object and has “10” labels on it. The following image shows what this should look like in the graphic display window:

![https://python-physutil.googlecode.com/svn/wiki/images/x-axis.png](https://python-physutil.googlecode.com/svn/wiki/images/x-axis.png)

PhysAxis has many more parameters than just the object that it is based on and the number of labels that it has. Here is a more complex example:

```
axis2 = PhysAxis(track, 10, axisType="arbitrary", labels=(1,2,3,"four",5,6,7,8,9,10), axis=vector(1,1,0))
```

which creates the following in the graphic display window:

![https://python-physutil.googlecode.com/svn/wiki/images/axis-45.png](https://python-physutil.googlecode.com/svn/wiki/images/axis-45.png)

In this example an “arbitrary” axis with 10 labels based on the “track” object is created. The parameter ''axisType=”arbitrary”'' makes the axis arbitrary meaning that the user can set arbitrary labels to be displayed along the axis and set an arbitrary orientation for the axis. The parameter ''labels=(1,200,3,”four”,5,6,70,8,9,10)'' defines the values to be displayed as the 10 labels along the axis. As you can see, these values may be strings as well as numbers. The ''labels'' parameter may also be set equal to zero if no labels are desired. The parameter ''axis=vector(1,1,0)'' sets (1,1,0) as the unit vector that defines the orientation of the axis.

The ''axisType'' parameter may also be set to ''“x”'' (which causes axis labels to be the x-coordinates and orients the axis along the vector (1,0,0)) or ''“y”'' (which causes the axis labels to be the y-coordinates and orients the axis along the vector (0,1,0)).

The default ''axisType'' is ''“x”'' thus making the ''axis'' parameter equal to ''vector(1,0,0)'' by default. Because these are the default values, they do not need to be explicitly stated every time you want to create a PhysAxis of ''axisType= “x”''. Therefore all three of the following lines are equivalent:

```
axis = PhysAxis(track, 10, axisType=”x”, axis=vector(1,0,0))

axis = PhysAxis(track, 10, axisType=”x”)

axis = PhysAxis(track, 10)
```

Here is an example of how to create an axis with a different start position:

```
axis = PhysAxis(track, 10, startPos=vector(-1, 1, 0))
```

In this example an axis with 10 labels based along the “track” object is created starting at (-1, 1, 0). By default ''startPos=vector(-obj\_size(obj).x/2,-4\*obj\_size(obj).y,0)'' ((The “obj” object refers to the object that the PhysAxis is oriented along, so in these examples the “track” object.)).

The following screenshot displays the default position of the axis below the “track” object and then the altered axis position above the “track” object from the example above:

![https://python-physutil.googlecode.com/svn/wiki/images/axis2.png](https://python-physutil.googlecode.com/svn/wiki/images/axis2.png)

The following example shows how to change the length of the axis being created:

```
axis = PhysAxis(track, 10, length=7.5)
```

![https://python-physutil.googlecode.com/svn/wiki/images/axis-long.png](https://python-physutil.googlecode.com/svn/wiki/images/axis-long.png)

In this example an axis with 10 labels oriented along the “track” object is created that is 10 units long. The ''length'' parameter may be used to define how long the axis created is. By default ''length'' is set to the length of the object along which the axis is oriented, in this case ''obj-size(track).x''.

The following example demonstrates how to change how labels are placed relative to axis markers along the axis:

```
axis = PhysAxis(track, 10, labelOrientation=”up”)
```

![https://python-physutil.googlecode.com/svn/wiki/images/axis-label.png](https://python-physutil.googlecode.com/svn/wiki/images/axis-label.png)

In this example an axis with 10 labels oriented along the “track” object is created with the labels oriented above the markers along the axis. The parameter ''labelOrientation=”up”'' places the labels above the markers. The options for labelOrientation are ''“down”'', ''“up”'', ''“left”'', or ''“right”'' which orient the labels accordingly. The default ''labelOrientation'' is ''“down”''.

## Updating PhysAxis in a Loop ##

In order to determine if the reference object has shifted and therefore whether the PhysAxis should be shifted as well, the PhysAxis must be updated within the while loop. Here is how to update the axis:

```
axis.update()
```

## Reorienting PhysAxis ##

The ''reorient()'' function allows axes to be modified during a simulation to reflect various aspects of the object they are serving as an axis for. For example, if one wanted an axis which points in the direction of the force of an object and whose length matches the force's magnitude, calling ''axis.update()'' would be insufficient as this would merely move the existing axis as a whole; this is where ''reorient()'' comes in.

The ''reorient()'' function takes a subset of the parameters that can be given to the initial constructor of PhysAxis, specifically:

```
axis=None, startPos=None, length=None, labels=None, labelOrientation=None
```

As you can see all of these parameters are set to ''None'' by default meaning that their default behavior is to not change any of the current values of the axis that ''reorient()'' is called on. This means that if you were to call ''axis.reorient()'' with no parameters this would effectively recreate the axis without changing anything about it. The following example shows how the axis works to alter certain parameters of the axis:

```
axis.reorient(length=50, labelOrientation=”left”)
```

In this example the ''reorient'' call updates the ''length'' parameter to 50 making the axis 50 units long and it updates the ''labelOrientation'' parameter to ''“left”'' moving the axis labels to the left of the markers. These are the only two parameters that ''reorient'' changes in this example.

The ''reorient()'' function allows you to change any or all of the parameters ''axis'', ''startPos'', ''length'', ''labels'', and ''labelOrientation'' during a simulation and recreates the axis with the updated parameters.