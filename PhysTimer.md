# PhysTimer Class #

In this section we will describe the PhysTimer class which keeps track of the current time and displays it in the simulation's window.

## Setting up the Timer ##

Here is an example of how to set up the timer:

```
from physutil import *

# Sets timer in top right of screen
timerDisplay = PhysTimer(2, 5, useScientific=False)
```

Importing from physutil makes all the Physics utility tools including the PhysTimer available for use in the current program.

In this example, the timer will be displayed at x-coordinate “2” and y-coordinate “5.”  By default, the timer is displayed in HH:MM:SS:DD format -- hours, minutes, seconds, and 1/100 of a second format. This format is communicated to the computer when you type ''useScientific=False''.  The timer will appear in a similar fashion to the screenshot below.

![https://python-physutil.googlecode.com/svn/wiki/images/timer.png](https://python-physutil.googlecode.com/svn/wiki/images/timer.png)

Since only the first two variables are expected it isn’t necessary to type ''useScientific=False'' when trying to display the timer in HH:MM:SS:DD format.  The line of code:

```
timerDisplay = PhysTimer(2, 5, useScientific=False) 
```

works exactly the same as:

```
timerDisplay = PhysTimer(2, 5)
```

because this representation is the default behavior.

## Update PhysTimer in Loop ##

In order to display the current time in the simulation window, the timer has to be updated within the while loop.  Here is how you update timerDisplay:

```
timerDisplay.update(t)
```

## Displaying Timer in Scientific Notation ##

PhysTimer can also be displayed in scientific notation instead of HH:MM:SS:DD format.  To do this, type:

```
timerDisplay = PhysTimer(2, 5, useScientific=True)
```

In the simulation window you will see a timer displayed at x-position 2 and y-position 5.  Changing ''useScientific=True'' to ''useScientific=False'' will make the timer display in HH:MM:SS:DD format (this is the default).  A screenshot of how the scientific notation format will look can be seen below.



![https://python-physutil.googlecode.com/svn/wiki/images/scitimer.png](https://python-physutil.googlecode.com/svn/wiki/images/scitimer.png)