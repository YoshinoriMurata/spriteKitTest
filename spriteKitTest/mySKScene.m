//
//  mySKScene.m
//  spriteKitTest
//
//  Created by Yoshinori Murata on 2014/06/16.
//  Copyright (c) 2014年 Yoshinori Murata. All rights reserved.
//

#import "mySKScene.h"

@implementation mySKScene

-(instancetype)initWithSize:(CGSize)size{
    if (self = [super initWithSize:size]) {
        //背景に色を指定
        self.backgroundColor = [UIColor blackColor];
        //ラベルを追加する
        SKLabelNode *mySKLabel = [SKLabelNode labelNodeWithFontNamed:@"Marker Felt"];
        mySKLabel.text = @"Hello World";
        mySKLabel.position = CGPointMake(160, 300);
        [self addChild:mySKLabel];
    }
    return self;
}

@end
