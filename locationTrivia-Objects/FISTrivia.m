//
//  FISTrivia.m
//  locationTrivia-Objects
//
//  Created by Yoseob Lee on 6/8/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "FISTrivia.h"

@implementation FISTrivia

-(instancetype)init{
    self = [super init];
    
    if (self)
    {
        _content = @"";
        _likes = 0;
    }
    return self;
}

-(instancetype)initWithContent:(NSString *)content Likes:(NSInteger)likes
{
    self = [super init];
    
    if (self)
    {
        _content = content;
        _likes = likes;
    }
    return self;
}


@end
