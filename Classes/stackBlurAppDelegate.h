//
//  stackBlurAppDelegate.h
//  stackBlur
//
//  Created by Thomas on 07/02/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class stackBlurViewController;

@interface stackBlurAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    stackBlurViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet stackBlurViewController *viewController;

@end

