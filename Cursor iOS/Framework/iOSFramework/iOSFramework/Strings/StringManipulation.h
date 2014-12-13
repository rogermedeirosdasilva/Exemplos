//
//  Substring.h
//  iOSFramework
//
//  Created by Aluno on 13/12/14.
//  Copyright (c) 2014 IM Technology. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StringManipulation : NSObject

+ (NSString*) Substring : (NSString*) Value FromIndex:(int)start ToIndex:(int)end;

+ (NSString*) Substring : (NSString*) Value FromIndex:(int)start;

+ (NSString*) Left : (NSString*) Value Size:(int)tamanhho;

+ (NSString*) Right : (NSString*) Value Size:(int)tamanhho;

@end
