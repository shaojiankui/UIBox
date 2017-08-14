//
//  AppDelegate.m
//  NSBox-Demo
//
//  Created by Jakey on 2017/8/14.
//  Copyright © 2017年 Jakey. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    self.box.borderType = NSBoxCustom;

    self.box.fillColor = [NSColor redColor];
    self.box.borderColor = [NSColor yellowColor];
    self.box.borderWidth = 5;
    self.box.cornerRadius = 15;

    
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
