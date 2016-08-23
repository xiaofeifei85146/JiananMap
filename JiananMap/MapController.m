//
//  MapController.m
//  JiananMap
//
//  Created by Teplot_03 on 16/8/22.
//  Copyright © 2016年 Teplot_03. All rights reserved.
//

#import "MapController.h"
#import <MAMapKit/MAMapKit.h>
#import <MapKit/MapKit.h>

@interface MapController ()<MAMapViewDelegate>

@property (nonatomic, strong) MAMapView *mapView;

@property (nonatomic, strong) MAUserLocation *userLocation;

@end

#define ThemeColor [UIColor cyanColor]
#define ScreenSize [[UIScreen mainScreen] bounds].size
#define NavBarHeight self.navigationController.navigationBar.frame.size.height

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
    CGPoint segCenter = seg.center;
    segCenter.x = self.navigationController.navigationBar.center.x;
    segCenter.y = self.navigationController.navigationBar.center.y;
    seg.center = segCenter;
    seg.selectedSegmentIndex = 0;
    seg.tintColor = ThemeColor;
    [self.navigationController.navigationBar addSubview:seg];
    
    UIBarButtonItem *searchBarButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:@selector(searchAction)];
    searchBarButton.tintColor = [UIColor grayColor];
    self.navigationItem.rightBarButtonItem = searchBarButton;
    
    
    _mapView = [[MAMapView alloc] initWithFrame:self.view.frame];
    _mapView.showsUserLocation = YES;
    _mapView.delegate = self;
    _mapView.userTrackingMode = MAUserTrackingModeFollow;
    [_mapView setZoomLevel:16.1 animated:YES];
    [self.view addSubview:_mapView];
    
    //定位按钮
    CGFloat gap = 20.0;
    CGFloat width = 40.0;
    UIButton *updateLocBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [updateLocBtn setBackgroundColor:[UIColor greenColor]];
    updateLocBtn.frame = CGRectMake(gap, ScreenSize.height-gap-NavBarHeight, width, width);
    [self.view addSubview:updateLocBtn];
    
    //手掌按钮
    UIButton *pawBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [pawBtn setBackgroundColor:[UIColor blueColor]];
    pawBtn.frame = CGRectMake(gap*2+width, ScreenSize.height-gap-NavBarHeight, width, width);
    [self.view addSubview:pawBtn];
    
    //找房按钮
    UIButton *findBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [findBtn setBackgroundColor:ThemeColor];
    [findBtn setTitle:@"帮你找房" forState:UIControlStateNormal];
    findBtn.frame = CGRectMake(gap*3+2*width, ScreenSize.height-gap-NavBarHeight, width*2, width);
    [self.view addSubview:findBtn];
    
    //推荐度按钮
    UIButton *recomendBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [recomendBtn setBackgroundColor:ThemeColor];
    recomendBtn.frame = CGRectMake(ScreenSize.width-50, 70+NavBarHeight, 30, 90);
    [self.view addSubview:recomendBtn];
    
}

- (void)searchAction {
    //点击这里可以改变它的放大级别
    static CGFloat level = 1.1;
    level++;
    [_mapView setZoomLevel:level animated:YES];
}

#pragma mark - mapView delegate
- (void)mapView:(MAMapView *)mapView didUpdateUserLocation:(MAUserLocation *)userLocation updatingLocation:(BOOL)updatingLocation {
    if(updatingLocation)
    {
        self.userLocation = userLocation;
        
        
        
    }
}

#pragma mark - segment
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


@end
