//
//  BillSplitter.h
//  Bill Splitter
//
//  Created by Paul on 2017-09-16.
//  Copyright © 2017 Paul. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BillSplitter : NSObject

-(NSString*)splitBill:(NSString*)billAmount people:(NSString*)people;


@end
