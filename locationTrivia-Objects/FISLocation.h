//
//  FISLocation.h
//  locationTrivia-Objects
//
//  Created by Yoseob Lee on 6/8/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISTrivia.h"

@interface FISLocation : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSNumber *latitude;
@property (nonatomic, strong) NSNumber *longitude;
@property (nonatomic, strong) NSMutableArray *triviaItems;
@property (nonatomic, strong) NSDictionary *location;


-(NSString *)shortenedNameToLength:(NSInteger)length;
-(NSArray *)getLocationNamesWithLocations:(NSArray*)locations;
-(BOOL)verifyLocation;
-(instancetype)initWithName:(NSString *)name andLatitude:(NSNumber *)latitude andLongitude:(NSNumber *)longitude;


@end
