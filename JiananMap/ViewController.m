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
    
    [self performSelector:@selector(gogogo) withObject:nil afterDelay:0.001];
    
}

- (void)gogogo {
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:[MapController new]];
    [self presentViewController:nav animated:YES completion:nil];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:[MapController new]];
    [self presentViewController:nav animated:YES completion:nil];
}



@end
