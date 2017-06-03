//
//  ScaryBugData.h
//  ScaryBugs
//
//  Created by Carlos D. Santiago on 6/2/17.
//  Copyright © 2017 Carlos D. Santiago. All rights reserved.
//
//	https://www.raywenderlich.com/17811/how-to-make-a-simple-mac-app-on-os-x-10-7-tutorial-part-13

#import <Foundation/Foundation.h>

@interface ScaryBugData : NSObject

@property (strong) NSString *title;
@property (assign) float rating;

+ (id)withTitle:(NSString*)title rating:(float)rating;

@end
