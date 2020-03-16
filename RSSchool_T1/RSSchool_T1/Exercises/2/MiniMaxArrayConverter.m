#import "MiniMaxArrayConverter.h"

@implementation MiniMaxArrayConverter

// Complete the convertFromArray function below.
- (NSArray<NSNumber*>*)convertFromArray:(NSArray<NSNumber*>*)array {
    NSInteger min=0;
    NSInteger minSum = 0;
    NSInteger maxSum = 0;
    NSInteger max=0;
    NSMutableArray *newArray =[[NSMutableArray alloc]init];
    for( NSInteger i =0; i<array.count;i++){
        if(array[i]>array[max]){
            max=i;
        }
        if(array[i]<array[min]){
            min=i;
        }
    }
    NSInteger j=0;
    for( NSInteger i =0; i<array.count;i++){
        if(i==min){continue;}
        else{minSum=minSum+array[i].integerValue;}
    }
    j=0;;
    for( NSInteger i =0; i<array.count;i++){j++;
        if(i==max){continue;}
        else{maxSum=array[i].integerValue+maxSum;}
    }
    [newArray addObject:[NSNumber numberWithInt: maxSum]];
    [newArray addObject:[NSNumber numberWithInt: minSum]];
    return@[newArray[0],newArray[1]];
}

@end
