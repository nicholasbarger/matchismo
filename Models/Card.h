//
//  Card.h
//  Matchismo
//
//  Created by Nicholas Barger on 8/29/13.
//  Copyright (c) 2013 Nicholas Barger. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic) BOOL isFaceUp;
@property (nonatomic) BOOL isUnplayable;

@end
