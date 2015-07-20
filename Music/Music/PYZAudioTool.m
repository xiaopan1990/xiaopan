//
//  PYZAudioTool.m
//  Music
//
//  Created by 小潘 on 15/7/19.
//  Copyright (c) 2015年 best. All rights reserved.
//

#import "PYZAudioTool.h"
#import <AVFoundation/AVFoundation.h>
#import <UIKit/UIKit.h>

@implementation PYZAudioTool

static NSMutableDictionary *_soundIDs;

+(NSMutableDictionary *)soundIDs
{
    if (!_soundIDs) {
        _soundIDs = [NSMutableDictionary dictionary];
    }
    return _soundIDs;
}

//播放音效
+(void)playAudioWithFileName:(NSString *)filename
{
    /*//   创建URL
    NSURL *url = [[NSBundle mainBundle]URLForResource:@"buyao.wav" withExtension:nil];
    //    创建音效ID
    SystemSoundID soundID;
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)(url), &soundID);
    //    播放音效(本地音效)
    AudioServicesPlayAlertSound(soundID);*/
    
//    判断文件名是否为nil
    if (filename == nil) {
        return;
    }
//    从字典中取出音效ID
    SystemSoundID soundID = [[self soundIDs][filename]intValue];
//    判断音效ID是否为nil
    if (!soundID) {
        NSURL *url = [[NSBundle mainBundle]URLForResource:filename withExtension:nil];
//        判断url是否为空
        if (!url) {
            return;
        }
//        创建音效
        AudioServicesCreateSystemSoundID((__bridge CFURLRef)(url), &soundID);
//        将音效ID添加到字典中
        [self soundIDs][filename] = @(soundID);
    }
//  播放音效
    AudioServicesPlaySystemSound(soundID);
    
}


//销毁音效
+(void)disposeAudioWithFileName:(NSString *)filename
{
//    判断文件名是否为nil
    if (filename == nil) {
        return;
    }
//    从字典中取出音效
    SystemSoundID soundID =[[self soundIDs][filename]intValue];
    if (soundID) {
        //    销毁音效
        AudioServicesDisposeSystemSoundID(soundID);
        //    从字典中移除已经销毁的音效ID
        [[self soundIDs]removeObjectForKey:filename];
    }

}


@end
