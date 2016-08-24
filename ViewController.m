//
//  ViewController.m
//  16_08_24_UIToolBar简单使用
//
//  Created by 姚懿恒 on 16/8/24.
//  Copyright © 2016年 姚懿恒. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)add:(UIBarButtonItem *)sender {
    UIView *last = [self.view.subviews lastObject];
    float oneY = last.frame.origin.y + last.frame.size.height +1;
    UIView *one = [[UIView alloc] initWithFrame:CGRectMake(0, oneY, 320, 44)];
    one.backgroundColor = [UIColor lightGrayColor];

    [self.view addSubview:one];
}

- (IBAction)delete:(UIBarButtonItem *)sender {
    //取出最后一个子控件, 由于subview是NSArray数组, 不可变, 所以需要取出最后一个子控件.
    UIView *last= [self.view.subviews lastObject];
    //调用removeFromSuperview删除
    [last removeFromSuperview];


}


@end
