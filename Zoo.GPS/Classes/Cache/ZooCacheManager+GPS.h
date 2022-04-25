//
//  ZooCacheManager.h
//  Zoo
//
//  Created by lZackx on 2022/4/14.

#import <Foundation/Foundation.h>
#import <Zoo/ZooCacheManager.h>
#import <MapKit/MapKit.h>


@interface ZooCacheManager (GPS)

- (void)saveMockGPSSwitch:(BOOL)on;

- (BOOL)mockGPSSwitch;

- (void)saveMockCoordinate:(CLLocationCoordinate2D)coordinate;

- (CLLocationCoordinate2D)mockCoordinate;

@end
