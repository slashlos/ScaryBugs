//
//  ScaryBugDoc.m
//  ScaryBugs
//
//  Created by Carlos D. Santiago on 6/2/17.
//  Copyright © 2017 Carlos D. Santiago. All rights reserved.
//
//	https://www.raywenderlich.com/17811/how-to-make-a-simple-mac-app-on-os-x-10-7-tutorial-part-13

#import "ScaryBugDoc.h"
#import "ScaryBugData.h"

@implementation ScaryBugDoc

- (id)initWithTitle:(NSString*)title rating:(float)rating thumbImage:(NSImage *)thumbImage fullImage:(NSImage *)fullImage
{
	if ((self = [super init]))
	{
		self.data = [ScaryBugData withTitle:title rating:rating];
		self.thumbImage = thumbImage;
		self.fullImage = fullImage;
	}
	return self;
}

+ (id)withTitle:(NSString*)title rating:(float)rating thumbImage:(NSImage *)thumbImage fullImage:(NSImage *)fullImage
{
	ScaryBugDoc * doc = [[self alloc] initWithTitle:title rating:rating thumbImage:thumbImage fullImage:fullImage];

	return doc;
}

@end
