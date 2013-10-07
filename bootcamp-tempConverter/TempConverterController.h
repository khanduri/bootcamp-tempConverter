//
//  TempConverterController.h
//  bootcamp-tempConverter
//
//  Created by Prashant Khanduri - Hearsay on 10/2/13.
//  Copyright (c) 2013 KDeal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TempConverterController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *inputVal;
@property (weak, nonatomic) IBOutlet UILabel *degLabel;
@property (weak, nonatomic) IBOutlet UILabel *invDegLabel;
@property (weak, nonatomic) IBOutlet UILabel *tempVal;
@property (weak, nonatomic) IBOutlet UISegmentedControl *degControl;
- (IBAction)onChange:(id)sender;
- (IBAction)resign:(id)sender;

@end
