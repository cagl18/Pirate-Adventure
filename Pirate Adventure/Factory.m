//
//  Factory.m
//  Pirate Adventure
//
//  Created by Carlos Gonzalez on 11/9/14.
//  Copyright (c) 2014 cagl. All rights reserved.
//

#import "Factory.h"
#import "Tile.h"
@implementation Factory

-(NSArray *) tiles
{
    Tile * tile1 = [[Tile alloc] init];
    tile1.story =@"story1";
    tile1.backgroundImage = [UIImage imageNamed:@"PirateStart.jpg"];
    
    Tile * tile2 = [[Tile alloc] init];
    tile2.story =@"story2";
    
    Tile * tile3 = [[Tile alloc] init];
    tile3.story =@"story3";
    
    Tile * tile4 = [[Tile alloc] init];
    tile4.story =@"story4";
    
    Tile * tile5 = [[Tile alloc] init];
    tile5.story =@"story5";
    
    Tile * tile6 = [[Tile alloc] init];
    tile6.story =@"story6";
    
    Tile * tile7 = [[Tile alloc] init];
    tile7.story =@"story7";
    
    Tile * tile8 = [[Tile alloc] init];
    tile8.story =@"story8";

    Tile * tile9 = [[Tile alloc] init];
    tile9.story =@"story9";

    Tile * tile10 = [[Tile alloc] init];
    tile10.story =@"story10";

    Tile * tile11 = [[Tile alloc] init];
    tile11.story =@"story11";
    
    Tile * tile12 = [[Tile alloc] init];
    tile12.story =@"story12";

    NSMutableArray *firstColumn = [[NSMutableArray alloc] init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];
    
    NSMutableArray *secondColumn = [[NSMutableArray alloc] init];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];
    
    NSMutableArray *thridColumn = [[NSMutableArray alloc] init];
    [thridColumn addObject:tile7];
    [thridColumn addObject:tile8];
    [thridColumn addObject:tile9];
    
    NSMutableArray *fourthColumn = [[NSMutableArray alloc] init];
    [fourthColumn addObject:tile10];
    [fourthColumn addObject:tile11];
    [fourthColumn addObject:tile12];
    
    NSArray * tiles = [[NSArray alloc] initWithObjects:firstColumn,secondColumn,thridColumn,fourthColumn, nil];
    
    return tiles;
}

@end
