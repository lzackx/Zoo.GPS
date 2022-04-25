//
//  ZooManager+GPS.m
//  Zoo
//
//  Created by lZackx on 2022/4/14.

#import "ZooManager+GPS.h"
#import "ZooCacheManager+GPS.h"
#import "ZooGPSMocker.h"

#import <Zoo/Zooi18NUtil.h>


@implementation ZooManager (GPS)

#pragma mark - GPS
- (void)addGPSPlugins {
    [self addPluginWithModel: [self appMockGPSPluginModel]];
}

- (void)setupGPSPlugins {
    if ([[ZooCacheManager sharedInstance] mockGPSSwitch]) {
        CLLocationCoordinate2D coordinate = [[ZooCacheManager sharedInstance] mockCoordinate];
        CLLocation *loc = [[CLLocation alloc] initWithLatitude:coordinate.latitude
                                                     longitude:coordinate.longitude];
        [[ZooGPSMocker shareInstance] mockPoint:loc];
    }
}

#pragma mark - Model

- (ZooManagerPluginTypeModel *)appMockGPSPluginModel {
    ZooManagerPluginTypeModel *model = [ZooManagerPluginTypeModel new];
    model.title = ZooLocalizedString(@"Mock GPS");
    model.desc = ZooLocalizedString(@"Mock GPS");
    model.icon = @"zoo_mock_gps";
    model.pluginName = @"ZooGPSPlugin";
    model.atModule = ZooLocalizedString(@"General");
    return model;
}

@end
