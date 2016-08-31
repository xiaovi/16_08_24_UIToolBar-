//
//  ViewController.h
//  16_08_24_UIToolBar简单使用
//
//  Created by 姚懿恒 on 16/8/24.
//  Copyright © 2016年 姚懿恒. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)add:(UIBarButtonItem *)sender;

-(IBAction)deleteClick:(UIButton *)btn;
- (IBAction)delete:(UIBarButtonItem *)sender;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *deleteBtn;

@end

