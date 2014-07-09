//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Nicholas Barger on 8/29/13.
//  Copyright (c) 2013 Nicholas Barger. All rights reserved.
//

#import "CardGameViewController.h"

@interface CardGameViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) PlayingCardDeck *deck;

- (IBAction)selectCard:(UIButton *)sender;

@end

@implementation CardGameViewController

- (PlayingCardDeck *) deck
{
    if(!_deck) {
        _deck = [[PlayingCardDeck alloc] init];
    }
    
    return _deck;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)selectCard:(UIButton *)sender {
    // toggle selected state
    sender.selected = !sender.selected;
    
    // update flip count
    self.flipCount++;
    
    // toggle display of random card
    if(sender.selected) {
        Card* card = [self.deck drawRandomCard];
        [sender setTitle:card.contents forState: UIControlStateSelected];
    }
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}

@end
