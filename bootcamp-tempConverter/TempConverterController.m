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
    NSString * pickedMetric = @"Celcius";
    NSString * invPickedMetric = @"Fahrenheit";
    
    float inputVal = [self.inputVal.text floatValue];
    float calVal = (inputVal * (9.0/5.0)) + 32.0;
    
    if (self.degControl.selectedSegmentIndex == 1){
        pickedMetric = @"Fahrenheit";
        invPickedMetric = @"Celcius";
        calVal = (inputVal - 32.0) * (5.0 / 9.0);
        
    }
    
    self.invDegLabel.text = invPickedMetric;
    self.degLabel.text = pickedMetric;
    
    self.tempVal.text = [NSString stringWithFormat:@"%0.2f deg", calVal];
}
@end
