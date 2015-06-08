//
//  FISTrivia.h
//  locationTrivia-Objects
//
//  Created by Yoseob Lee on 6/8/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISTrivia : NSObject
@property (nonatomic, strong) NSString *content;
@property (nonatomic) NSInteger likes;

-(instancetype)initWithContent:(NSString *)content Likes:(NSInteger)likes;

@end
