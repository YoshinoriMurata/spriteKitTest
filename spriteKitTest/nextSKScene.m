//
//  nextSKScene.m
//  spriteKitTest
//
//  Created by Yoshinori Murata on 2014/07/01.
//  Copyright (c) 2014年 Yoshinori Murata. All rights reserved.
//

#import "nextSKScene.h"

#import "mySKScene.h"

@interface nextSKScene(){
    //終了用のラベルを用意する
    SKLabelNode *exitSKLabel;
    
}
@end

@implementation nextSKScene

-(instancetype)initWithSize:(CGSize)size{
    if(self = [super initWithSize:size]){
        //背景に色を設定する
        self.backgroundColor = [UIColor orangeColor];
        //終了ラベルを作って追加する
        exitSKLabel = [SKLabelNode labelNodeWithFontNamed:@"AvenirNext-Heavy"];
        exitSKLabel.text = @"EXIT";
        exitSKLabel.position = CGPointMake(160, 100);
        [self addChild:exitSKLabel];
    }
    return self;
}

//タッチされたときに、ラベルが押されたかを調べる
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    //タッチした座標を取得して
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInNode:self];
    //終了ラベルをタッチしていたら
    if ([exitSKLabel containsPoint:location]) {
        //最初のシーンを作り
        mySKScene *scene = [[mySKScene alloc] initWithSize:self.size];
        //ドアを閉じるように切り替える
        SKTransition *transition = [SKTransition doorsCloseHorizontalWithDuration:1];
        [self.view presentScene:scene transition:transition];
    }
}

@end
