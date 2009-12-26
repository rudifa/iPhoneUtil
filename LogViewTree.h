//
//  LogViewTree.h
//  TabBarApp
//
//  Created by Rudi Farkas on 20.05.09.
//  Copyright 2009 Wolfscliff. All rights reserved.
//

// Reusing code from Exploring subviews and layout, a blog entry by Erica Sadun :
// http://blogs.oreilly.com/iphone/2008/11/view-spelunking-part-1-explori.html


/******

 // To log a tree view of the application's UIView hierarchy to the debugger console :

 // 1. Add LogViewTree.h and LogViewTree.m to the application

 // 2. import LogViewTree.h into the application's AppDelegate.m or into a Controller.m

 #import "LogViewTree.h"

 // 3. add to one of methods (e.g. viewDidAppear) one of the following invocations :

 [[[[LogViewTree alloc] init] autorelease] logAppViewTree];
 [[[[LogViewTree alloc] init] autorelease] logAppViewTreeToLevel:4];
 [[[[LogViewTree alloc] init] autorelease] logViewTreeFrom:aView];
 [[[[LogViewTree alloc] init] autorelease] logViewTreeFrom:aView toMaxLevel:4];


 *****/

#import <Foundation/Foundation.h>

@interface LogViewTree : NSObject {
}

-(void) logViewTreeFrom:(id)view;
-(void) logViewTreeFrom:(id)view toMaxLevel:(int)maxLevel;
-(void) logAppViewTree;
-(void) logAppViewTreeToLevel:(int)maxLevel;

@end

