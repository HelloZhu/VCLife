//
//  TViewController.m
//  Life1
//
//  Created by ap2 on 16/5/20.
//  Copyright © 2016年 ap2. All rights reserved.
//

#import "TViewController.h"

@interface TViewController ()

@end

@implementation TViewController

- (instancetype)init
{
    if (self = [super init]) {
        NSLog(@"%s", __func__);
    }
    
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        NSLog(@"%s", __func__);
    }
    
    return self;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        NSLog(@"%s", __func__);
    }
    return self;
}

- (void)loadView
{
    [super loadView];
    NSLog(@"%s", __func__);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"%s", __func__);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
