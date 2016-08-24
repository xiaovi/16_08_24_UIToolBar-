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
    UIView *one = [[UIView alloc] init];
    one.backgroundColor = [UIColor lightGrayColor];
    //2.添加到控制器的View中
    [self.view addSubview:one];

    //3.让删除变得有效
    _deleteBtn.enabled = YES;

    //4.添加动画

    one.frame = CGRectMake(320, oneY, 320, 50);
    //透明度
    one.alpha = 0;

    //4.1开始动画
    //[UIView beginAnimations:nil context:nil];
    //[UIView setAnimationDuration:0.5];

    //苹果官方有更为方便的动画制作效果, 以上代码可被替换为以下代码:
    /*
    [UIView animateWithDuration:1.0 animations:^{

        //只需要包裹住需要执行动画的代码块即可, 动画效果为从右边滑到左边, 与44行相呼应
        one.frame = CGRectMake(0, oneY, 320, 50);
        one.alpha = 1;
    }];
     */
    //如果想动画执行完毕后执行新的代码, 用以下方法:
    [UIView animateWithDuration:1.0 animations:^{
        one.frame = CGRectMake(0, oneY, 320, 50);
        one.alpha = 1;
    } completion:^(BOOL finished) {
        NSLog(@"移动完毕");
    }];


    //[UIView commitAnimations];
}

- (IBAction)delete:(UIBarButtonItem *)sender {


    //考虑到一些用户会有点击了却没有反应的心理, 应该在一开始时禁用删除属性, 待控制器的View中有其他子控件时才允许点击,
    //具体操作, 在SB中修改 item的值, 将enable✔️去掉, 为了能够修改它的值, 需要获取其属性.
    UIView *last= [self.view.subviews lastObject];


    [UIView animateWithDuration:1.0 animations:^{
        CGRect temp = last.frame;
        temp.origin.x = 320;
        last.frame = temp;
        last.alpha = 0;
    } completion:^(BOOL finished) {//动画执行完后执行另外的代码, 所以可用在这句执行删除
        [last removeFromSuperview];
        _deleteBtn.enabled = (self.view.subviews.count > 1);
        NSLog(@"删除完毕");
    }];

    //

    //这样做虽然可以做到在一开始显示禁用状态, 但是添加后在删除到一个不剩的时候, 仍然显示为可用状态,
    //为了解决这个问题有以下做法:

    // 判断剩下的子控件的个数, 在最后一个子控件被删除时进行判断
    //if (self.view.subviews.count == 1){
    //    _deleteBtn.enabled = NO;
    //}
    //以上代码可用简写为:
    //剩下子控件的个数如果大于1, 则返回yes



}


@end
