//
//  ViewController.m
//  Pirate Adventure
//
//  Created by Carlos Gonzalez on 11/9/14.
//  Copyright (c) 2014 cagl. All rights reserved.
//

#import "ViewController.h"
#import "Factory.h"
#import "Tile.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Factory * factory = [[Factory alloc] init];
//    NSArray * tiles = [factory tiles];
//    NSLog(@"%@",tiles)
    
    self.tiles = [factory tiles];
    self.currentPoint = CGPointMake(0, 0);
//    NSLog(@"%f %f", self.currentPoint.x, self.currentPoint.y);
    
    [self UpdateTile];
    [self UpdateButtons];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionButtonPressed:(UIButton *)sender {
}

- (IBAction)northButtonPressed:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y+1);
    [self UpdateButtons];
    [self UpdateTile];
}

- (IBAction)westButtonPressed:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x-1, self.currentPoint.y);
    [self UpdateButtons];
    [self UpdateTile];
}

- (IBAction)southButtonPressed:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y-1);
    [self UpdateButtons];
    [self UpdateTile];
}

- (IBAction)eastButtonPressed:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x+1, self.currentPoint.y);
    [self UpdateButtons];
    [self UpdateTile];
}

-(void)UpdateButtons
{
    self.westButton.hidden = [self tileHideAtPoint:CGPointMake(self.currentPoint.x-1, self.currentPoint.y)];
    self.eastButton.hidden = [self tileHideAtPoint:CGPointMake(self.currentPoint.x+1, self.currentPoint.y)];
    self.northButton.hidden = [self tileHideAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y+1)];
    self.southButton.hidden = [self tileHideAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y-1)];
}

-(void)UpdateTile
{
    Tile * tileModel = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    self.storyLabel.text = tileModel.story;
//    self.backgroundImageView.image = tileModel.backgroundImage;
}
-(BOOL)tileHideAtPoint:(CGPoint) point
{
    if(point.y>=0 && point.x>=0 && point.x < [self.tiles count] && point.y <[[self.tiles objectAtIndex:point.x] count])
    {
        return NO;
    }
    
    else
    {
        return YES;
    }
}













@end
