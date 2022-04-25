//
//  ZooManager+GPS.h
//  Zoo
//
//  Created by lZackx on 2022/4/14.

#import <Zoo/ZooManager.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZooManager (GPS)

// MARK: - GPS
- (void)addGPSPlugins;

- (void)setupGPSPlugins;

@end

NS_ASSUME_NONNULL_END
