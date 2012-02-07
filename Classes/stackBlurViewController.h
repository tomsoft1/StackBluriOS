//
//  stackBlurViewController.h
//  stackBlur
//
//  Created by Thomas on 07/02/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface stackBlurViewController : UIViewController {
	IBOutlet	UIImageView *imagePreview;
	UIImage *source;
}

- (IBAction) sliderChanged:(id)sender;


@end

