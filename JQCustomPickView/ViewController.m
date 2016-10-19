//
//  ViewController.m
//  JQCustomPickView
//
//  Created by jianquan on 2016/10/19.
//  Copyright © 2016年 JoySeeDog. All rights reserved.
//

#import "ViewController.h"
#import "JQCustomPicker.h"

@interface ViewController ()<JQPickerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 50)];
    [button setTitle:@"show picker" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor redColor]];
    button.center = self.view.center;
    [button addTarget:self action:@selector(showPicker) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
   
    // Do any additional setup after load ing the view, typically from a nib.
}

- (void)showPicker {
    NSArray *leftArray = [NSArray arrayWithObjects:@"A",@"B",@"C",@"D",@"E", nil];
    NSArray *rightArray =  [NSArray arrayWithObjects:@"AA",@"BB",@"CC",@"DD",@"EE", nil];
    
    JQCustomPicker *jqCustomPicker = [[JQCustomPicker alloc] initWithSelectedBackColor:[UIColor blueColor] textColor:[UIColor whiteColor] plainColor:[UIColor blueColor] title:@"JQ Picker" leftArray:leftArray rightArray:rightArray];
    jqCustomPicker.delegate = self;
    [jqCustomPicker showInView:self.view];
}

#pragma -mark JQPickerDelegate
- (void)pickerCallBack:(NSString *)leftString rightString:(NSString *)rightString {
    NSLog(@"leftString is %@",leftString);
    NSLog(@"rightString is %@",rightString);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
