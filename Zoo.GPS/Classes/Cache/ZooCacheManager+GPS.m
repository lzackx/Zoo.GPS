//
//  ZooCacheManager.m
//  Zoo
//
//  Created by lZackx on 2022/4/14.

#import "ZooCacheManager+GPS.h"
#import <Zoo/ZooManager.h>
#import <Zoo/ZooDefine.h>


static NSString * const kZooMockGPSSwitchKey = @"zoo_mock_gps_key";
static NSString * const kZooMockCoordinateKey = @"zoo_mock_coordinate_key";

@implementation ZooCacheManager (GPS)

- (void)saveMockGPSSwitch:(BOOL)on{
    [[NSUserDefaults standardUserDefaults] setBool:on forKey:kZooMockGPSSwitchKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (BOOL)mockGPSSwitch{
    return [[NSUserDefaults standardUserDefaults] boolForKey:kZooMockGPSSwitchKey];
}

- (void)saveMockCoordinate:(CLLocationCoordinate2D)coordinate{
    NSDictionary *dic = @{
        @"longitude":@(coordinate.longitude),
        @"latitude":@(coordinate.latitude)
    };
    [[NSUserDefaults standardUserDefaults] setObject:dic forKey:kZooMockCoordinateKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (CLLocationCoordinate2D)mockCoordinate{
    NSDictionary *dic = [[NSUserDefaults standardUserDefaults] valueForKey:kZooMockCoordinateKey];
    CLLocationCoordinate2D coordinate ;
    if (dic[@"longitude"]) {
        coordinate.longitude = [dic[@"longitude"] doubleValue];
    }else{
        coordinate.longitude = 0.;
    }
    if (dic[@"latitude"]) {
        coordinate.latitude = [dic[@"latitude"] doubleValue];
    }else{
        coordinate.latitude = 0.;
    }
    
    return coordinate;
}


@end
