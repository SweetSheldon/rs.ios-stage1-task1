#import "BillCounter.h"

@implementation BillCounter

// Complete the following fuction
- (NSString*)compareResultForBill:(NSArray<NSNumber*>*)bill notIncludingElementWithIndex:(NSInteger)index withGivenSum:(NSNumber*)sum {
    NSInteger AnnaWillPay=0;
    NSInteger subs=0;
    for( NSInteger i =0; i<bill.count;i++){
        if(i!=index){AnnaWillPay=AnnaWillPay+bill[i].intValue;}
        else{continue;}}
    AnnaWillPay=AnnaWillPay/2;
    subs = sum.integerValue-AnnaWillPay;
    if(subs==0){return @"Bon Appetit";}
    else{sum =[[NSNumber alloc] initWithInt:subs];
        return [NSString stringWithFormat:@"%@", sum.stringValue];}
}

@end
