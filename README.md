

iPhoneUtils : utility classes by rudifa
================================================================

*Copyright 2009 rudifa a.k.a. Wolfscliff a.k.a Rudi Farkas*

----------------------------------------------------------------


class LogViewTree
-----------------


Reuses code from *Exploring subviews and layout*, a blog entry by [Erica Sadun](http://blogs.oreilly.com/iphone/2008/11/view-spelunking-part-1-explori.html)


**To log a tree view of the application's UIView hierarchy to the debugger console :**

* Add LogViewTree.h and LogViewTree.m to the application

* import LogViewTree.h into the application's AppDelegate.m or into a Controller.m
<pre>
      #import "LogViewTree.h"
</pre>

* add to a target method (e.g. viewDidAppear) one of the following invocations :

<pre>
      [[[[LogViewTree alloc] init] autorelease] logViewTreeFrom:aView];
      [[[[LogViewTree alloc] init] autorelease] logViewTreeFrom:aView toMaxLevel:3];
      [[[[LogViewTree alloc] init] autorelease] logAppViewTree];
      [[[[LogViewTree alloc] init] autorelease] logAppViewTreeToMaxLevel:3];
</pre>

The first two methods dump the tree starting from the specified view while the second two methods dump the tree from the application's key window.
 
The 2-line information for each view contains the view's class name, the address and the frame.

Sample output :
 <pre>
	 UIWindow    p=0x3812e10
	 {{0, 0}, {320, 480}}
	 .    UIView    p=0x381cd80
	 .    {{0, 20}, {320, 460}}
	 .    .    UILabel    p=0x381cde0
	 .    .    {{10, 50}, {300, 30}}
	 .    .    UIButton    p=0x381ce40
	 .    .    {{100, 150}, {120, 30}}
	 .    .    .    UIButtonLabel    p=0x381d260
	 .    .    .    {{39, 4}, {42, 22}}
	 .    .    UIButton    p=0x381cf40
	 .    .    {{100, 200}, {120, 30}}
	 .    .    .    UIButtonLabel    p=0x381b990
	 .    .    .    {{43, 4}, {33, 22}}
	 .    .    UIButton    p=0x381d0d0
	 .    .    {{100, 250}, {120, 30}}
	 .    .    .    UIButtonLabel    p=0x381b920
	 .    .    .    {{8, 4}, {104, 22}}
	 
</pre>

----------------------------------------------------------------



