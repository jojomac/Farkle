//
//  DieLabel.m
//  Farkle
//
//  Created by Joanne McNamee on 5/21/14.
//  Copyright (c) 2014 JMWHS. All rights reserved.
//

#import "DieLabel.h"



@implementation DieLabel

- (IBAction)onTapped: (id) sender
{
    NSLog(@"This is tapped label");
    [self.delegate didChooseDie:self];

}

- (void)roll
{
    int diceValue = arc4random_uniform(6) + 1;
    self.text = [NSString stringWithFormat:@"%d", diceValue];
}
@end
