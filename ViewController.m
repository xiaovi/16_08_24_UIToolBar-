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
    //0.取出最后一个子控件
    UIView *last = [self.view.subviews lastObject];
    //这行的Y = 最后一个子控件的Y值+其高度, +间隔
    float oneY = last.frame.origin.y + last.frame.size.height +1;
    //1.创建新一行
    UIView *one = [[UIView alloc] initWithFrame:CGRectMake(0, oneY, 320, 44)];
    one.backgroundColor = [UIColor lightGrayColor];
    //2.添加到控制器的View中
    [self.view addSubview:one];

    //3.让删除变得有效
    _deleteBtn.enabled = YES;
}

- (IBAction)delete:(UIBarButtonItem *)sender {


    //考虑到一些用户会有点击了却没有反应的心理, 应该在一开始时禁用删除属性, 待控制器的View中有其他子控件时才允许点击,
    //具体操作, 在SB中修改 item的值, 将enable✔️去掉, 为了能够修改它的值, 需要获取其属性.
    UIView *last= [self.view.subviews lastObject];
    [last removeFromSuperview];


}


@end
