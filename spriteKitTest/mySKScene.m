//
//  mySKScene.m
//  spriteKitTest
//
//  Created by Yoshinori Murata on 2014/06/16.
//  Copyright (c) 2014年 Yoshinori Murata. All rights reserved.
//

#import "nextSKScene.h"

#import "mySKScene.h"



@interface mySKScene(){
    //調べるラベルを用意する
    //SKLabelNode *mySKLabel;
    //スタート用のラベルを用意する
    SKLabelNode *startSKLabel;
}
@end

@implementation mySKScene

-(instancetype)initWithSize:(CGSize)size{
    if (self = [super initWithSize:size]) {
        //背景に色を指定
        self.backgroundColor = [UIColor brownColor];
        
        //スプライトを使って追加する
       // SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:@"tanikaze"];
        //sprite.position = CGPointMake(160, 200);
        //sprite.size = CGSizeMake(300, 230);
        //[self addChild:sprite];
        //移動する
        //SKAction *action1 = [SKAction moveTo:CGPointMake(160, 300) duration:2];
        //回転する
        //SKAction *action2 = [SKAction rotateByAngle:M_PI_2*2 duration:2];
        //拡大、縮小する
        //SKAction *action3 = [SKAction resizeToWidth:320 height:100 duration:2];
        //回転アクションをずっと繰り返す
        //SKAction *action = [SKAction rotateByAngle:M_PI_2*2 duration:1];
        //SKAction *actionForever = [SKAction repeatActionForever:action];
        //左下に移動、右上に移動を繰り返す
        //SKAction *move1 = [SKAction moveTo:CGPointMake(280, 200) duration:1];
        //SKAction *move2 = [SKAction moveTo:CGPointMake(50, 400) duration:1];
        //SKAction *goback = [SKAction sequence:@[move1, move2]];
        //[sprite runAction:[SKAction repeatActionForever:goback]];
        

        //ラベルを追加する
        //SKLabelNode *mySKLabel = [SKLabelNode labelNodeWithFontNamed:@"Marker Felt"];
        //mySKLabel = [SKLabelNode labelNodeWithFontNamed:@"Marker Felt"];
        //mySKLabel.text = @"Hello World";
        //mySKLabel.position = CGPointMake(160, 300);
        //[self addChild:mySKLabel];
        startSKLabel = [SKLabelNode labelNodeWithFontNamed:@"AvenirNext-Heavy"];
        startSKLabel.text = @"START";
        startSKLabel.position = CGPointMake(160, 150);
        [self addChild:startSKLabel];

    }
    return self;
}

//タッチされた時、ラベルが押されたか調べる
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    //タッチした座標を取得して、
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInNode:self];
    //ラベルがタッチされたのかどうか調べる
    //if ([mySKLabel containsPoint:location]) {
    //    NSLog(@"タッチした");
    //}
    if ([startSKLabel containsPoint:location]){
        //次のシーンを作り
        nextSKScene *scene = [[nextSKScene alloc] initWithSize:self.size];
        //ドアが開くように切り替える
        SKTransition *transition = [SKTransition doorsOpenHorizontalWithDuration:1];
        [self.view presentScene:scene transition:transition];
    }
}

@end
