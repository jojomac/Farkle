//
//  ViewController.m
//  Farkle
//
//  Created by Joanne McNamee on 5/21/14.
//  Copyright (c) 2014 JMWHS. All rights reserved.
//

#import "ViewController.h"
#import "DieLabel.h"

@interface ViewController () <DieLabelDelegate>
@property (weak, nonatomic) IBOutlet DieLabel *dieLabelFour;

@property (weak, nonatomic) IBOutlet DieLabel *dieLabelOne;
@property (weak, nonatomic) IBOutlet DieLabel *dieLabelTwo;
@property (weak, nonatomic) IBOutlet DieLabel *dieLabelThree;

@property (weak, nonatomic) IBOutlet DieLabel *dieLabelFive;
@property (weak, nonatomic) IBOutlet DieLabel *dieLabelSix;
@property (strong, nonatomic) NSMutableArray *dice;

@end

@implementation ViewController

- (IBAction)onRollButtonPressed:(id)sender
{
    for(DieLabel *object in self.view.subviews)
    {
        if([object isKindOfClass:[DieLabel class]])
        {
            if (![self.dice containsObject:object])
            {
                [object roll];

            }

        }
    }
}

-(void)didChooseDie:(DieLabel *)dieLabel
{
    [self.dice addObject:dieLabel];
    dieLabel.backgroundColor = [UIColor yellowColor];
    }



- (void)viewDidLoad
{
    [super viewDidLoad];

    self.dieLabelOne.delegate = self;
    self.dieLabelTwo.delegate = self;
    self.dieLabelThree.delegate = self;
    self.dieLabelFour.delegate = self;
    self.dieLabelFive.delegate = self;
    self.dieLabelSix.delegate = self;
    self.dice = [[NSMutableArray alloc] init];


	}


@end
