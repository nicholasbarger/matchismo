//
//  PlayingCard.h
//  Matchismo
//
//  Created by Nicholas Barger on 8/29/13.
//  Copyright (c) 2013 Nicholas Barger. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card

@property (nonatomic) NSUInteger rank;
@property (strong, nonatomic) NSString *suit;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
