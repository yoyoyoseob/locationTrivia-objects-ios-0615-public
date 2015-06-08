//
//  FISLocation.m
//  locationTrivia-Objects
//
//  Created by Yoseob Lee on 6/8/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "FISLocation.h"

@implementation FISLocation

-(NSString *)shortenedNameToLength:(NSInteger)length
{
    NSString *shortenedString = @"";
    
    
//    if (length < 0) {
//        return self.name;
//    }
    
    NSInteger testThing = self.name.length;
    
    if (testThing > length){
        NSLog(@"Are you entering this method");
        
        if (length >= 0){
            shortenedString = [self.name substringToIndex:length];
        }
        else {
            shortenedString = self.name;
        }
    }

    return shortenedString;
    
    
//    NSRange range = NSMakeRange(0, length);
//    
//    NSString *shortenedName = [self.name substringWithRange:range];
//    
//    return shortenedName;
}

-(NSArray *)getLocationNamesWithLocations:(NSArray *)locations
{
    NSMutableArray *resultArray = [[NSMutableArray alloc] init];
    for (NSDictionary *location in locations) {
        NSString *name = location[@"name"];
        [resultArray addObject:name];
    }
    
    return resultArray;
}

- (BOOL) verifyLocation
{
    if (![self.name isEqualToString: @""] && ([self.latitude integerValue] > -90 && [self.latitude integerValue] < 90) && ([self.longitude integerValue] > -180 && [self.longitude integerValue] < 180)){
        return YES;
    }
    
//    if ([self.latitude integerValue] > -90 && [self.latitude integerValue] < 90){
//        return YES;
//    }
//    
//    if ([self.longitude integerValue] > -180 && [self.longitude integerValue] < 180){
//        return YES;
//    }
    return NO;
}

-(instancetype)initWithName:(NSString *)name andLatitude:(NSNumber *)latitude andLongitude:(NSNumber *)longitude
{
    self = [super init];
    
    if (self)
    {
        _name = name;
        _latitude = latitude;
        _longitude = longitude;
    }
    
    return self;
}


@end
