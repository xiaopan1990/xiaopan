//
//  ViewController.m
//  Music
//
//  Created by 小潘 on 15/7/19.
//  Copyright (c) 2015年 best. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>
#import "PYZAudioTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    
    //    随机播放
    /*
    NSString *filename = [NSString stringWithFormat:@"m_%02d.wav",arc4random()%(14-3+1)+3];
    [PYZAudioTool playAudioWithFileName:filename];
    
//    同一时刻播放多个音效
    [PYZAudioTool playAudioWithFileName:@"buyao.wav"];
    [PYZAudioTool playAudioWithFileName:@"m_09.wav"];
    */
    
    
//  利用AudioServicesPlaySystemSound播放音乐,注意:真实开发中不建议使用播放音乐
    
        [PYZAudioTool playAudioWithFileName:@"normal.aac"];
   
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    [PYZAudioTool disposeAudioWithFileName:@"buyao.wav"];
}


@end
