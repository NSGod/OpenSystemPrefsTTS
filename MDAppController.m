//
//  MDAppController.m
//  Clear NSTableView
//
//  Created by Mark Douma on 7/8/2011.
//  Copyright 2011 Mark Douma LLC. All rights reserved.
//

#import "MDAppController.h"
#import "SBSystemPreferences.h"


@implementation MDAppController


- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender {
	return YES;
}


- (IBAction)openSpeechPrefs:(id)sender {
//	[[NSWorkspace sharedWorkspace] openURL:
//	 [NSURL fileURLWithPath:@"/System/Library/PreferencePanes/Speech.prefPane"]];
	
	SBSystemPreferencesApplication *systemPrefs = 
	[SBApplication applicationWithBundleIdentifier:@"com.apple.systempreferences"];
	
	[systemPrefs activate];
	
	SBElementArray *panes = [systemPrefs panes];
	SBSystemPreferencesPane *speechPane = nil;
	
	for (SBSystemPreferencesPane *pane in panes) {
		if ([[pane id] isEqualToString:@"com.apple.preference.speech"]) {
			speechPane = pane;
			break;
		}
	}
	[systemPrefs setCurrentPane:speechPane];
	
	SBElementArray *anchors = [speechPane anchors];
	
	for (SBSystemPreferencesAnchor *anchor in anchors) {
		if ([anchor.name isEqualToString:@"TTS"]) {
			[anchor reveal];
		}
	}
	
}


@end

