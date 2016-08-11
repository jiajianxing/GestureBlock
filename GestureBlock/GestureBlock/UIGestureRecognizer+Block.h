//
//  UIGestureRecognizer+Block.h
//  runtime的使用
//
//  Created by pro on 16/8/11.
//  Copyright © 2016年 贾建兴. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^JJXGestureBlock)(id gestureRecognizer);

@interface UIGestureRecognizer (Block)


/**
 *  使用类方法初始化添加方法
 *
 *  @param block 手势回调
 *
 *  @return 内部action
 */
+ (instancetype)JJX_gestureRecognizerWithActionBlock:(JJXGestureBlock)block;

@end
