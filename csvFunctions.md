# Introduction #

PhysUtil has built in functions for easily reading and writing csv (comma-separated-value) files.  Unlike the cvs library included with python, these functions have a simplified syntax that is independent of python version ( i.e. they work for both python 2.x and 3.x).


# Details #
**readcsv()**

[Col1, ...] = readcsv(filename, cols=1, IgnoreHeader=False, startrow = 0, NumericData=True)

To read data from a csv file, the user simply specifies the file and the number of columns.  If the csv file has a header in the first row they can included IgnoreHeader = True (default=False).  Alternatively the can use the startrow to specify the row the data starts in (default=0).  NumericData allows the user to specify if the data should be converted to a float or left as text (default=True, i.e. convert to float).

**writecsv()**

writecsv('filename.csv', [X,Y,...], header=['one','two',...])

To save a csv file, the user first specifies the location/name of the file to be saved.  Next, in the second parameter, they supply the lists of values (numeric or text) that they want to form the columns of the file.  Alternatively, they can specify a numpy array (see numpy documentation for details on that structure).  If desired, they can pass a header to be included at the top of the columns.
The function is smart enough to make sure that the number of rows in
each list are the same, and that the number of headers match the
number of lists.  If either of those conditions aren't met, it will
display some errors telling the user what they did wrong.