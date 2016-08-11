//
//  ViewController.m
//  GestureBlock
//
//  Created by pro on 16/8/11.
//  Copyright © 2016年 贾建兴. All rights reserved.
//

#import "ViewController.h"
#import "UIGestureRecognizer+Block.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.view addGestureRecognizer:[UITapGestureRecognizer JJX_gestureRecognizerWithActionBlock:^(UITapGestureRecognizer *gestureRecognizer) {
        
        CGPoint point = [gestureRecognizer locationInView:self.view];
        NSLog(@"%f -- %f", point.x, point.y);
        
        NSLog(@"hello点击了view");
        
    }]];
    

    
}


@end
