//
//  BillSplitter.m
//  Bill Splitter
//
//  Created by Paul on 2017-09-16.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "BillSplitter.h"

@implementation BillSplitter

-(NSString*)splitBill:(NSString*)billAmount people:(NSString*)people{

    //NSnumberformatter breaks the numbers into primitive types int, float, double, nsdecimal
    //NSNumberFormatter *formatter = [[NSNumberFormatter alloc]init];
    
    //    float billAmountDecimal = [formatter numberFromString:billAmount].floatValue;
    //
    //    float peopleDecimal = [formatter numberFromString:people].floatValue;

    // can not divide with nsdecimal it has to be through nsdecimalnumber..
    
    NSDecimalNumber *numberOfPeople = [NSDecimalNumber decimalNumberWithString:people];
    NSDecimalNumber *billAmountDecimal = [NSDecimalNumber decimalNumberWithString:billAmount];
    
    //rounding decimal number.
    NSDecimalNumber *splitBill = [billAmountDecimal decimalNumberByDividingBy:numberOfPeople];
    
    NSDecimalNumberHandler *behavior = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundPlain
                                                                                              scale:2
                                                                                   raiseOnExactness:NO
                                                                                    raiseOnOverflow:NO
                                                                                   raiseOnUnderflow:NO
                                                                                raiseOnDivideByZero:NO];
    
    NSDecimalNumber *roundedNumber = [splitBill decimalNumberByRoundingAccordingToBehavior:behavior];

    

    return roundedNumber.stringValue;
}


@end
