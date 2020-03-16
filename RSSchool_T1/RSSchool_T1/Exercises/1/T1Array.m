#import "T1Array.h"
#import <Foundation/Foundation.h>

@implementation T1Array

// Complete the following fuction
- (NSArray *)convertToHappy:(NSArray *)sadArray {
    NSMutableArray *happyArray =[[NSMutableArray alloc]init];
    //NSMutableArray *middle =[[NSMutableArray alloc]init];
    NSInteger middle,left,right,sum= 0;
    NSInteger i;
    NSInteger j = 0; NSInteger p=sadArray.count;
    happyArray =[[NSMutableArray alloc] initWithArray:sadArray copyItems:YES];
    if(sadArray==nil||sadArray.count==0) { return @[];}
    else if(sadArray.count<=2&&sadArray.count!=0){return sadArray;}
        for(i =1; i<happyArray.count-1;i++){
      middle=[[happyArray objectAtIndex:i] intValue];
       left=[[happyArray objectAtIndex:i-1] intValue];
       right=[[happyArray objectAtIndex:i+1] intValue];
            sum=left+right;
       if(middle>sum){
           [happyArray removeObjectAtIndex:i];i=1;} }
    
    return happyArray;
}

@end
