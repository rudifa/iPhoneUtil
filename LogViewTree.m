//
//  LogViewTree.m
//  TabBarApp
//
//  Created by Rudi Farkas on 20.05.09.
//  Copyright 2009 Wolfscliff. All rights reserved.
//

#import "LogViewTree.h"

void doLog(int level, id formatstring,...)
{
    for (int i = 0; i < level; i++) printf(".    ");

    va_list arglist;
    if (formatstring)
    {
        va_start(arglist, formatstring);
        id outstring = [[NSString alloc] initWithFormat:formatstring arguments:arglist];
        fprintf(stderr, "%s\n", [outstring UTF8String]);
        va_end(arglist);
		[outstring release];
    }
}


@implementation LogViewTree

- (void) explode:(id)aView level:(int)level maxLevel:(int)maxLevel
{
	if (maxLevel > 0 && level >= maxLevel)
		return;

	doLog(level, @"%@    p=%p", [[aView class] description], aView);

    doLog(level, @"%@", NSStringFromCGRect([aView frame]));
    for (UIView *subview in [aView subviews])
        [self explode:subview level:(level + 1) maxLevel:maxLevel];
}


- (void) logViewTreeFrom:(id)view {
    [self explode:view level:0 maxLevel:0];
}

- (void) logViewTreeFrom:(id)view toMaxLevel:(int)maxLevel {
    [self explode:view level:0 maxLevel:maxLevel];
}

- (void) logAppViewTree {
    [self logViewTreeFrom:[[UIApplication sharedApplication] keyWindow]];
}

- (void) logAppViewTreeToMaxLevel:(int)maxLevel {
    [self logViewTreeFrom:[[UIApplication sharedApplication] keyWindow] toMaxLevel:maxLevel];
}


@end
