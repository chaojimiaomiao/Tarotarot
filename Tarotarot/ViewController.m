//
//  ViewController.m
//  Tarotarot
//
//  Created by 翟冰洁 on 14-11-25.
//  Copyright (c) 2014年 翟冰洁. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController () {
    AVAudioPlayer *player;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSError *error;
    player = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"egypt" ofType:@"mp3"]] error:&error];
    player.numberOfLoops = 3;
    [player prepareToPlay];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:NO];
    [player play];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:NO];
    if([player isPlaying]) {
        [player stop];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)playMusic:(id)sender {
    if ([player isPlaying]) {
        [player pause];
    } else {
        [player play];
    }
}

@end
