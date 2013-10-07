//
//  TempConverterController.m
//  bootcamp-tempConverter
//
//  Created by Prashant Khanduri - Hearsay on 10/2/13.
//  Copyright (c) 2013 KDeal. All rights reserved.
//

#import "TempConverterController.h"

@interface TempConverterController ()

@end

@implementation TempConverterController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Temperature";
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self updateValues];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onChange:(id)sender {
    [self.view endEditing:YES];
    [self updateValues];
}

- (void) updateValues{
    NSArray * degLbl = @[@"℃", @"℉"];

    float inputVal = [self.inputVal.text floatValue];
    float calVal = (inputVal * (9.0/5.0)) + 32.0;
    
    if (self.degControl.selectedSegmentIndex == 1){
        calVal = (inputVal - 32.0) * (5.0 / 9.0);
    }
    
    self.invDegLabel.text = [degLbl objectAtIndex:self.degControl.selectedSegmentIndex];
    self.degLabel.text = [degLbl objectAtIndex:fmod(self.degControl.selectedSegmentIndex + 1, 2)];
    
    self.tempVal.text = [NSString stringWithFormat:@"%0.2f", calVal];
}
@end
