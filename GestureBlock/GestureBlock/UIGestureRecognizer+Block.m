//
//  UIGestureRecognizer+Block.m
//  runtime的使用
//
//  Created by pro on 16/8/11.
//  Copyright © 2016年 贾建兴. All rights reserved.
//

#import "UIGestureRecognizer+Block.h"
#import <objc/message.h>

static const int target_key;

@implementation UIGestureRecognizer (Block)

+ (instancetype)JJX_gestureRecognizerWithActionBlock:(JJXGestureBlock)block
{
    return [[self alloc] initWithActionBlock:block];
    
}

- (instancetype)initWithActionBlock:(JJXGestureBlock)block
{
    self = [self init];
    [self addActionBlock:block];
    [self addTarget:self action:@selector(invoke:)];
    
    return self;
    
}


- (void)addActionBlock:(JJXGestureBlock)block
{
    if (block) {
        objc_setAssociatedObject(self, &target_key, block, OBJC_ASSOCIATION_COPY_NONATOMIC);
    }
}

- (void)invoke:(id)sender
{
    JJXGestureBlock block = objc_getAssociatedObject(self, &target_key);
    if (block) {
        block(sender);
    }
}

@end
