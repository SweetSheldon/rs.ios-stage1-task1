#import "PalindromeSolver.h"

@implementation PalindromeSolver

// Complete the highestValuePalindrome function below.
- (NSString *) highestValuePalindrome:(NSString *)s n:(NSNumber *)n k:(NSNumber *)k {
    NSInteger length = n.integerValue-1; NSNumber *sum =[[NSNumber alloc]init];
    NSArray *zero = @[@1];NSInteger leftObject = 0; NSInteger rightobject = 0;
    NSInteger i = 0;NSInteger j = 0; NSInteger p = 2; NSInteger num=0; NSInteger count = 0; NSInteger w=0; NSInteger v = 0;
    NSMutableArray *array =[[NSMutableArray alloc]init];
    NSMutableArray *newarray =[[NSMutableArray alloc]init];
    NSMutableArray *result =[[NSMutableArray alloc]init];
    NSNumber *nine =[[NSNumber alloc]init]; nine =[[NSNumber alloc] initWithInt:9];
    for(NSInteger i=0; i<s.length;i++){
        NSString *obj =[s substringWithRange:NSMakeRange(i,1)];
        [array addObject:obj];
    }i=0; NSInteger firstObject = [array[0] intValue]; NSInteger lastObject =[array[length] integerValue];
    if(firstObject==0){w++;p--; }
    else if(lastObject==0){v++;p--;}
    else if(lastObject==firstObject){[newarray addObject:array[0]];    count++;v++;w++;p--;}
    do{/*if([[array objectAtIndex:i] isEqual:0]){i++;p--; count++;}
    else if(array[s.length-j-1]==0){j++;p--; count++;}*/
        if(array[i+w]>array[s.length-i-1-v]){
            for(i=0;i<n.integerValue/2-count;i++){
                NSInteger newvalue = i +w;
                [newarray addObject:array[newvalue]];
            }break;
        }
        else if(array[i+w]<array[s.length-i-1-v]){
            for(i=length;i>n.integerValue/2+count;i--){
                [newarray addObject:array[i+w]];
            }
            break;
        }
       
            p++;
          }
    while(count<n.intValue/2+2);
    result =[[NSMutableArray alloc] initWithArray:newarray copyItems:YES];
    for(i=newarray.count-1;i>=0;i--){
        [result addObject:newarray[i]];
    }w=0;v=0;
    NSInteger countn =0;for(i=0;i<(length+1)/2;i++){
        lastObject = [array[length-i-v] integerValue]; firstObject =[array[i] integerValue]; firstObject+=w;
        if(firstObject==0){w++;}
        else if(firstObject==0){v++;}
        else if(lastObject!=firstObject||lastObject==0||firstObject==0){countn++;}
    }
    if (countn>[k integerValue]){return @"-1";}
    
    NSInteger DiffrencesOfStrings = 0; for(i=0;i<s.length;i++){
        if(![[array objectAtIndex:i] isEqual:[result objectAtIndex:i]]){DiffrencesOfStrings++;
        }
    }
    
    
    if(DiffrencesOfStrings!=0&&DiffrencesOfStrings%2==0){
        for(i=0;i<(length+1)/2;i++){
            if(result[i]!=result[0]||result[length-i]!=result[0]){if(DiffrencesOfStrings>=2+[k integerValue]){continue;}
                result[i]=result[0];result[length-i]=result[0];DiffrencesOfStrings+=2;
            }
        }
        
        
        
        for(NSInteger i = 0; i<n.integerValue;i++){
            num+=[[result objectAtIndex:i] intValue]*(pow(10,n.integerValue/2-i+2));
            sum =[[NSNumber alloc] initWithInt:num];
        }
        return [NSString stringWithFormat:@"%@", sum.stringValue];
        
        
        
    }
    else {for(NSInteger i = 0; i<n.integerValue;i++){
        num+=[[result objectAtIndex:i] intValue]*(pow(10,n.integerValue/2-i+1));
        sum =[[NSNumber alloc] initWithInt:num];
    }
        return [NSString stringWithFormat:@"%@", sum.stringValue];}
    exit(1);
}

@end
