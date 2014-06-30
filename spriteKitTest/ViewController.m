//
//  ViewController.m
//  spriteKitTest
//
//  Created by Yoshinori Murata on 2014/06/16.
//  Copyright (c) 2014年 Yoshinori Murata. All rights reserved.
//

#import "ViewController.h"
#import "mySKScene.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //SKviewを準備する
    SKView *skView = (SKView *)self.view;
    //SKSceneを作る
    SKScene *scene = [mySKScene sceneWithSize:skView.bounds.size];
    scene.scaleMode = SKSceneScaleModeAspectFill;
    //SKViewに作ったシーンを表示する
    [skView presentScene:scene];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
