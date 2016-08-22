//
//  ViewController.m
//  JiananMap
//
//  Created by Teplot_03 on 16/8/22.
//  Copyright © 2016年 Teplot_03. All rights reserved.
//

#import "ViewController.h"
#import "MapController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:[MapController new]];
    [self presentViewController:nav animated:YES completion:nil];
}



@end
