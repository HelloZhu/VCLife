//
//  TestView.m
//  Life1
//
//  Created by ap2 on 16/5/20.
//  Copyright © 2016年 ap2. All rights reserved.
//

#import "TestView.h"

@implementation TestView

+ (void)initialize
{
     NSLog(@"%s", __func__);
}

- (instancetype)initWithFrame:(CGRect)frame
{
   self = [super initWithFrame:frame];
    if (self) {
        NSLog(@"%s", __func__);
    }
    
    return self;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"%s", __func__);
    }
    
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        NSLog(@"%s", __func__);
    }
    
    return self;
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
