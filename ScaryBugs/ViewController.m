//
//  ViewController.m
//  ScaryBugs
//
//  Created by Carlos D. Santiago on 6/3/17.
//  Copyright © 2017 Carlos D. Santiago. All rights reserved.
//
//	https://www.raywenderlich.com/17811/how-to-make-a-simple-mac-app-on-os-x-10-7-tutorial-part-13

#import "ViewController.h"
#import "ScaryBugData.h"
#import "ScaryBugDoc.h"

@implementation ViewController

- (void)viewDidLoad
{
	[super viewDidLoad];

	// Do any additional setup after loading the view.
	ScaryBugDoc * bug1 = [ScaryBugDoc withTitle:@"bug1" rating:1
									 thumbImage:[NSImage imageNamed:@"bug1"]
									  fullImage:[NSImage imageNamed:@"bug1"]];
	ScaryBugDoc * bug2 = [ScaryBugDoc withTitle:@"bug2" rating:2
									 thumbImage:[NSImage imageNamed:@"bug2"]
									  fullImage:[NSImage imageNamed:@"bug2"]];
	ScaryBugDoc * bug3 = [ScaryBugDoc withTitle:@"bug3" rating:3
									 thumbImage:[NSImage imageNamed:@"bug3"]
									  fullImage:[NSImage imageNamed:@"bug3"]];
	ScaryBugDoc * bug4 = [ScaryBugDoc withTitle:@"bug4" rating:4
									 thumbImage:[NSImage imageNamed:@"bug4"]
									  fullImage:[NSImage imageNamed:@"bug4"]];
	ScaryBugDoc * bug5 = [ScaryBugDoc withTitle:@"bug5" rating:5
									 thumbImage:[NSImage imageNamed:@"bug5"]
									  fullImage:[NSImage imageNamed:@"bug5"]];

	self.bugs = [NSMutableArray arrayWithArray:@[ bug1, bug2, bug3, bug4, bug5 ]];
}


- (void)setRepresentedObject:(id)representedObject
{
	[super setRepresentedObject:representedObject];

	// Update the view, if already loaded.
}

#pragma mark - DataSource

- (NSView *)tableView:(NSTableView *)tableView
   viewForTableColumn:(NSTableColumn *)tableColumn
				  row:(NSInteger)row
{
	// Get a new ViewCell
	NSTableCellView *cellView = [tableView makeViewWithIdentifier:tableColumn.identifier
															owner:self];

	// Since this is a single-column table view, this would not be necessary.
	// But it's a good practice to do it in order by remember it when a table is multicolumn.
	if ( [tableColumn.identifier isEqualToString:@"BugColumn"] )
	{
		ScaryBugDoc *bugDoc = [self.bugs objectAtIndex:row];

		cellView.imageView.image = bugDoc.thumbImage;
		cellView.textField.stringValue = bugDoc.data.title;
		return cellView;
	}
	return cellView;
}

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
	return self.bugs.count;
}

#pragma mark - Delegate

@end
