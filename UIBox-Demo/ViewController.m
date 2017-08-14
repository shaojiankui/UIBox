//
//  ViewController.m
//  UIBox-Demo
//
//  Created by Jakey on 2017/8/14.
//  Copyright © 2017年 Jakey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.box.titleFont = [UIFont systemFontOfSize:18];
    self.box.title = @"123213123";

    self.box.borderWidth = 1;
    self.box.cornerRadius = 15;
    self.box.borderColor = [UIColor greenColor];
    self.box.fillColor = [UIColor yellowColor];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
