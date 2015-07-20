//
//  PYZAudioTool.h
//  Music
//
//  Created by 小潘 on 15/7/19.
//  Copyright (c) 2015年 best. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PYZAudioTool : NSObject

//播放音效 
+(void)playAudioWithFileName:(NSString *)filename;
//销毁音效
+(void)disposeAudioWithFileName:(NSString *)filename;
@end
