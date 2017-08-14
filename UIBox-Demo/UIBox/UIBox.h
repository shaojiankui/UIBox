//
//  UIBox.h
//  UIBox-Demo
//
//  Created by Jakey on 2017/8/14.
//  Copyright © 2017年 Jakey. All rights reserved.
//

#import <UIKit/UIKit.h>
@class UIFont;

typedef NS_ENUM(NSUInteger, UIBoxTitlePosition) {
    UIBoxTitlePositionNoTitle				= 0,
    UIBoxTitlePositionAboveTop				= 1,
    UIBoxTitlePositionAtTop                 = 2,
    UIBoxTitlePositionBelowTop				= 3,
    UIBoxTitlePositionAboveBottom			= 4,
    UIBoxTitlePositionAtBottom				= 5,
    UIBoxTitlePositionBelowBottom			= 6
};

IB_DESIGNABLE
@interface UIBox : UIView

@property (nonatomic) UIBoxTitlePosition titlePosition;
@property (copy,nonatomic) IBInspectable NSString *title;
@property (strong,nonatomic) UIFont *titleFont;

@property (readonly) CGRect borderRect;
@property (readonly) CGRect titleRect;
@property (readonly, strong) UILabel *titleLabel;

//- (void)sizeToFit;

@property (nonatomic) CGFloat borderWidth;
@property (nonatomic) CGFloat cornerRadius;
@property (copy,nonatomic) UIColor *borderColor;
@property (copy,nonatomic) UIColor *fillColor;
@end
