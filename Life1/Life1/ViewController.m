//
//  ViewController.m
//  Life1
//
//  Created by ap2 on 16/5/20.
//  Copyright © 2016年 ap2. All rights reserved.
//

#import "ViewController.h"
#import "SViewController.h"
#import "TViewController.h"
#import "FViewController.h"
#import "TBViewController.h"

#import "TestView.h"

/** 创建VC，方法的执行顺序
 
 1、使用init创建VC
 initWithNibName:bundle:
 init
 loadView
 viewDidLoad
 
 2、使用storyBorad获取VC
 initWithCoder
 loadView
 viewDidLoad
 
 2、通过XIB创建VC
 initWithNibName:bundle
 loadView
 viewDidLoad
 
 4、创建TabBarVC(init)
 loadView
 viewDidLoad
 initWithNibName:bundle
 init
 viewWillAppear
 viewDidAppear
 
 5、创建View（init）
 initialize
 initWithFrame
 init
 
 5、创建View（initWithFrame）
 initialize
 initWithFrame
 
 5、创建View(XIB)
 initialize
 initWithCoder
 
 */


@interface ViewController ()

@end

@implementation ViewController

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
    
    TestView *tect1 = [[TestView alloc] init];
    TestView *tect = [[TestView alloc] initWithFrame:self.view.bounds];
    TestView *v2 = [[[NSBundle mainBundle] loadNibNamed:@"TestView" owner:nil options:nil] lastObject];
    /*initialize :TestView实例化三个对象，但只调用一次initialize*/
}

- (IBAction)btn:(id)sender {
    
    [self presentViewController:[[SViewController alloc] init] animated:YES completion:nil];
}


- (IBAction)T:(id)sender {
    
    TViewController *tvc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"T"];
    
    [self presentViewController:tvc animated:YES completion:nil];
}
- (IBAction)F:(id)sender {
    
    FViewController *fv = [[FViewController alloc] initWithNibName:@"FViewController" bundle:nil];
    [self presentViewController:fv animated:YES completion:nil];
}
- (IBAction)TB:(id)sender {
    
    TBViewController *tb=[[TBViewController alloc] init];
    tb.viewControllers = @[[UIViewController new], [UIViewController new]];
    [self presentViewController:tb animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
