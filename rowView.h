//
//  rowView.h
//  16_08_24_UIToolBar简单使用
//
//  Created by 姚懿恒 on 16/8/31.
//  Copyright © 2016年 姚懿恒. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface rowView : UIView
@property (weak, nonatomic) IBOutlet UIButton *iconBtn;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
+(id)rowViewWithIconName:(NSString *)iconName name:(NSString *)name;
@end
