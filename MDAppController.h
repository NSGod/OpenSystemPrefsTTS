//
//  MDAppController.h
//  Clear NSTableView
//
//  Created by Mark Douma on 7/8/2011.
//  Copyright 2011 Mark Douma LLC. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface MDAppController : NSObject <NSApplicationDelegate> {
    IBOutlet NSWindow			*window;
	
}

- (IBAction)openSpeechPrefs:(id)sender;

@end
