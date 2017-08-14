//
//  UIBox.m
//  UIBox-Demo
//
//  Created by Jakey on 2017/8/14.
//  Copyright © 2017年 Jakey. All rights reserved.
//

#import "UIBox.h"
//    struct __bFlags {
////        NSBorderType borderType:2;
//        UITitlePosition titlePosition:3;
//        unsigned int backgroundTransparent:1;
//        unsigned int orientation:2;
//        unsigned int needsTile:1;
//        unsigned int transparent:1;
//        unsigned int colorAltInterpretation:1;
//        unsigned int boxType:3;
//        unsigned int useSuperAddSubview:1;
//        unsigned int _RESERVED:17;
//    } _bFlags;
//    id _unused;

@implementation UIBox
- (void)willMoveToSuperview:(UIView *)newSuperview{
    if (newSuperview) {
        self.backgroundColor = [UIColor clearColor];
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        [self addSubview:_titleLabel];
    }
}
- (void)setTitle:(NSString *)title{
    _title = title;
    self.titleLabel.text = title;
    [self setNeedsDisplay];
}
- (void)setTitleFont:(UIFont *)titleFont{
    _titleFont = titleFont;
    [self setNeedsDisplay];
}
- (void)setFillColor:(UIColor *)fillColor{
    _fillColor = fillColor;
    [self setNeedsDisplay];
}
- (void)setBorderWidth:(CGFloat)borderWidth{
    _borderWidth = borderWidth;
    [self setNeedsDisplay];
}
- (void)setBorderColor:(UIColor *)borderColor{
    _borderColor = borderColor;
    [self setNeedsDisplay];
}
- (void)setCornerRadius:(CGFloat)cornerRadius{
    _cornerRadius = cornerRadius;
    [self setNeedsDisplay];
}
-(void)setTitlePosition:(UIBoxTitlePosition)titlePosition{
    _titlePosition = titlePosition;
    [self setNeedsDisplay];
}
- (void)layoutSubviews{
    [super layoutSubviews];
    CGRect rect = self.frame;
    UIFont *font = self.titleFont?:[UIFont systemFontOfSize:14.0];

    
    _borderRect = CGRectMake(0, font.pointSize+2, rect.size.width, rect.size.height-font.pointSize-2);
    _titleRect = CGRectMake(5, 0, rect.size.width-10,font.pointSize+2);
    
    self.titleLabel.frame = self.titleRect;
    self.titleLabel.font = font;
}
- (void)drawRect:(CGRect)rect {
    UIColor *fillColor = _fillColor?:[UIColor colorWithRed:224/255.0 green:224/255.0 blue:224/255.0 alpha:1];
    UIColor *borderColor = _borderColor?:[UIColor colorWithRed:220/255.0 green:220/255.0 blue:220/255.0 alpha:1];

    
    CGRect contentRect = _borderRect;
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:contentRect cornerRadius:self.cornerRadius?:5];
    maskPath.lineWidth = self.borderWidth?:1;
    [fillColor set];
    [maskPath fill];
    [borderColor set];
    [maskPath stroke];
}
@end
