//
//  stackBlurViewController.m
//  stackBlur
//
//  Created by Thomas on 07/02/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "stackBlurViewController.h"
#import "UIImage+StackBlur.h"

@implementation stackBlurViewController

double currVal;


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	source=[UIImage imageNamed:@"testIma.jpg"];
	imagePreview.image=source;
    currVal = 0;
}



/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}

- (IBAction) sliderChanged:(UISlider *)sender
{
    double sVal = sender.value;
	NSLog(@"Slider Value:%f", sVal);
    if (abs(currVal-sVal) >= 1) {
	imagePreview.image=[source stackBlur:sVal];
    currVal = sVal;
    }
}	
- (void)dealloc {
    [imagePreview dealloc];
    [super dealloc];
}

@end
