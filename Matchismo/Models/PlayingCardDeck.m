//
//  PlayingCardDeck.m
//  Matchismo
//
//  Created by Nicholas Barger on 8/29/13.
//  Copyright (c) 2013 Nicholas Barger. All rights reserved.
//

#import "PlayingCardDeck.h"

@implementation PlayingCardDeck

- (id)init
{
    self = [super init];
    
    if(self) {
        for(NSString *suit in [PlayingCard validSuits]) {
            for(NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank++) {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card atTop:YES];
            }
        }
    }
    
    return self;
}

@end
