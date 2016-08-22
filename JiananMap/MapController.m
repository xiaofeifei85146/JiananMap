//
//  MapController.m
//  JiananMap
//
//  Created by Teplot_03 on 16/8/22.
//  Copyright © 2016年 Teplot_03. All rights reserved.
//

#import "MapController.h"
#import <MAMapKit/MAMapKit.h>

@interface MapController ()

@property (nonatomic, strong) MAMapView *mapView;

@end

@implementation MapController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initSth];
    [self configUI];

}

- (void)initSth {
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)configUI {
    
    UISegmentedControl *seg = [[UISegmentedControl alloc] initWithItems:@[@"二手房",@"新房"]];
    [seg addTarget:self action:@selector(segClickAction:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:seg];
    
    _mapView = [[MAMapView alloc] initWithFrame:self.view.frame];
    _mapView.showsUserLocation = YES;
    [self.view addSubview:_mapView];
    
}

- (void)segClickAction:(UISegmentedControl *)sender {
    
    NSInteger currentIndex = sender.selectedSegmentIndex;
    switch (currentIndex) {
        case 0:
        {
            NSLog(@"0");
        }
            break;
            
        case 1:
        {
            NSLog(@"1");
        }
            break;
            
        default:
            break;
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
