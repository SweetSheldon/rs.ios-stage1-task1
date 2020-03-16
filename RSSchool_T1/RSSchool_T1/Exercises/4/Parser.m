#import "Parser.h"

@implementation Parser

// Complete the parseString function below.
- (NSArray <NSString*>*)parseString:(NSString*)string {
    NSMutableArray<NSString*>*result=[[NSMutableArray alloc] initWithArray: @[]];
    NSString *leftBracket = @"(<[";
    NSString *rightBracket = @")>]";
    NSInteger p=0;
    
    for(NSInteger i =0; i<string.length;i++){
        for(NSInteger j=0;j<leftBracket.length;j++){
            unichar firstChar =[leftBracket characterAtIndex:j];
            if([string characterAtIndex:i]==firstChar){
                for(NSInteger l = i+1; l<string.length;l++){
                    unichar subs =[string characterAtIndex:l];
                    unichar lastChar =[rightBracket characterAtIndex:j];
                    if(subs == firstChar){p++; continue;}
                    if(subs==lastChar&&p!=0){p--; continue;}
                    if(subs==lastChar&&p==0){[result addObject:[string substringWithRange:NSMakeRange(i+1,l-i-1)]];
                        break;}}}}}
    return result;
    }
   @end
    
