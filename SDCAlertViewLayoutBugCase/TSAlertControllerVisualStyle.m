//
//  TSAlertControllerVisualStyle.m
//  TestApp
//
//  Created by Victor Babenko on 11.02.15.
//  Copyright (c) 2015 virusman. All rights reserved.
//

#import "TSAlertControllerVisualStyle.h"
#import "UIView+SDCAutoLayout.h"
#import "SDCAlertController.h"

@implementation TSAlertControllerVisualStyle

- (CGFloat)width {
    if ([[UIScreen mainScreen] bounds].size.height > 569)
        return 288;
    else
        return 270;
}

- (CGFloat)cornerRadius {
    return 4;
}

- (UIFont *)titleLabelFont {
    return [UIFont fontWithName:@"OpenSans-Semibold" size:18];
}

- (UIFont *)messageLabelFont {
    //if ([[UIScreen mainScreen] bounds].size.height > 569)
        return [UIFont fontWithName:@"OpenSans" size:13];
    //else
    //    return [UIFont fontWithName:@"OpenSans" size:12];
}

- (UIColor *)titleLabelColor {
    return [UIColor colorWithRed:0.2 green:0.2 blue:0.2 alpha:1];
}

- (UIColor *)messageLabelColor {
    return [UIColor colorWithRed:0.2 green:0.2 blue:0.2 alpha:1];
}

- (CGFloat)labelSpacing {
    return 24;
}

- (CGFloat)messageLabelBottomSpacing {
    return 14;
}

- (UIEdgeInsets)contentPadding {
    if ([[UIScreen mainScreen] bounds].size.height > 569)
        return UIEdgeInsetsMake(30, 31, 12, 31);
    else
        return UIEdgeInsetsMake(30, 24, 12, 24);
}

- (CGFloat)actionViewSeparatorThickness {
    return 1;
}

- (CGFloat)actionViewSeparatorHorizontalPadding {
    return 8;
}

- (CGFloat)actionViewSeparatorVerticalPadding {
    return 8;
}




-(void)prepareVisualEffectView:(UIVisualEffectView *)vfxView {
    NSLog(@"prepareVFX");
    UIView *tintView = [[UIView alloc] init];
//    tintView.backgroundColor = [UIColor colorWithRed:0.831 green:0.839 blue:0.851 alpha:1.000];
    tintView.backgroundColor = [UIColor colorWithWhite:0.98 alpha:1.0];
    tintView.alpha = 0.75;
    tintView.translatesAutoresizingMaskIntoConstraints = NO;
    
    [vfxView addSubview:tintView];
    [tintView sdc_alignEdgesWithSuperview:UIRectEdgeAll];
}

- (UIColor *)textColorForAction:(SDCAlertAction *)action {
    if (action.style == SDCAlertActionStyleDestructive) {
        return [UIColor redColor];
    } else {
        return [UIColor colorWithRed:0.392 green:0.549 blue:0.8 alpha:1];
    }
}

- (UIFont *)fontForAction:(SDCAlertAction *)action {
    /*if (action.style == SDCAlertActionStyleCancel) {
        return [UIFont boldSystemFontOfSize:17];
    } else {
        return [UIFont systemFontOfSize:17];
    }*/
    return [UIFont fontWithName:@"OpenSans-Semibold" size:18];
}

- (CGFloat)actionViewHeight {
    return 52;
}


@end
