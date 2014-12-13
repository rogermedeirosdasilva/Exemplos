//
//  Substring.m
//  iOSFramework
//
//  Created by Aluno on 13/12/14.
//  Copyright (c) 2014 IM Technology. All rights reserved.
//

#import "StringManipulation.h"

@implementation StringManipulation

+ (NSString*) Substring : (NSString*) Value FromIndex:(int)start ToIndex:(int)end {
    NSString *subStr = [Value substringWithRange:NSMakeRange(start, end)];
    
    return subStr;
}

+ (NSString*) Substring : (NSString*) Value FromIndex:(int)start {
    NSString *subStr = [Value substringFromIndex:start];
    
    return subStr;
}

+ (NSString*) Left : (NSString*) Value Size:(int)tamanhho {
    NSString *subStr = [Value substringFromIndex:tamanhho];
    
    return subStr;
}

+ (NSString*) Right:(NSString *)Value Size:(int)tamanhho {
    NSString *subStr = [Value substringFromIndex:[Value length] - tamanhho];
    return subStr;
}

@end
