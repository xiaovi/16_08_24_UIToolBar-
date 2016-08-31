//
//  rowView.m
//  16_08_24_UIToolBar简单使用
//
//  Created by 姚懿恒 on 16/8/31.
//  Copyright © 2016年 姚懿恒. All rights reserved.
//

#import "rowView.h"

@implementation rowView

+(id)rowViewWithIconName:(NSString *)iconName name:(NSString *)name
{
    /*方法1, 使用tag获取想要的子控件
    rowView *rowView = [[NSBundle mainBundle] loadNibNamed:@"rowView" owner:nil options:nil][0];
    UIButton *iconBtn = [rowView viewWithTag:1];
    [iconBtn setImage:[UIImage imageNamed:iconName] forState:UIControlStateNormal];

    UILabel *nameLabel = [rowView viewWithTag:2];
    nameLabel.text = name;
     */

    //方法2, 通过设置成员变量来获取相关子控件
    rowView *rowView = [[NSBundle mainBundle] loadNibNamed:@"rowView" owner:nil options:nil][0];

    
    [rowView.iconBtn setImage:[UIImage imageNamed:iconName] forState:UIControlStateNormal];

    [rowView.nameLabel setText:name];

    /*
     关于为什么不能同下划线来访问成员变量?
     答:因为该方法为(+)方法 类方法, 类方法不能访问成员变量, 只能通过对象来访问属性(iconBtn 与nameLabel)
     
     */
    
    
    return rowView;
}


@end
