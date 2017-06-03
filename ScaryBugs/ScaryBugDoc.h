//
//  ScaryBugDoc.h
//  ScaryBugs
//
//  Created by Carlos D. Santiago on 6/2/17.
//  Copyright © 2017 Carlos D. Santiago. All rights reserved.
//
//	https://www.raywenderlich.com/17811/how-to-make-a-simple-mac-app-on-os-x-10-7-tutorial-part-13

#import <Foundation/Foundation.h>

@class ScaryBugData;

@interface ScaryBugDoc : NSObject

@property (strong) ScaryBugData *data;
@property (strong) NSImage *thumbImage;
@property (strong) NSImage *fullImage;

+ (id)withTitle:(NSString*)title rating:(float)rating thumbImage:(NSImage *)thumbImage fullImage:(NSImage *)fullImage;

@end
