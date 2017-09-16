//
//  ViewController.m
//  Bill Splitter
//
//  Created by Paul on 2017-09-15.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "ViewController.h"
#import "BillSplitter.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *amountTextField;

@property (weak, nonatomic) IBOutlet UISlider *numberOfPeopleSlider;

@property (weak, nonatomic) IBOutlet UILabel *personPayLabel;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
}

//- (IBAction)numberOfPeopleSlide:(UISlider *)sender {

//  sliders are values
    
//    NSString *showSlider =[NSString stringWithFormat:@"%@",sender];
//    
//    NSNumberFormatter *formatter = [[NSNumberFormatter alloc]init];
//    
//    float showSliderFloat = [formatter numberFromString:showSlider].floatValue;
//    
//    self.numberOfPeopleSlider.value = showSliderFloat;
//    
//    float value = sender.value;
//    NSLog(@"value::::%f",value);
//}

- (IBAction)calculateSplitAmount:(id)sender {
    BillSplitter *billSplitter = [[BillSplitter alloc]init];
    
    //can't add dollar sign in this because decimal number is not smart enough to have dollar sign
    NSString *sliderValue = [NSString stringWithFormat:@"%f", self.numberOfPeopleSlider.value];
    
    //get stringvalue of numberOfPeopleSlider.value
    self.personPayLabel.text = [billSplitter splitBill:self.amountTextField.text people:sliderValue];
}




@end
