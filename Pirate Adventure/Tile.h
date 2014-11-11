//
//  Tile.h
//  Pirate Adventure
//
//  Created by Carlos Gonzalez on 11/9/14.
//  Copyright (c) 2014 cagl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Tile : NSObject

@property (strong,nonatomic) NSString *story;
@property (strong, nonatomic) UIImage *backgroundImage;
@property (strong,nonatomic) NSString *actionButtonName;

@end
