//
//  SIOBluetooth.m
//  Analytics
//
//  Created by Travis Jeffery on 4/23/14.
//  Copyright (c) 2014 Segment.io. All rights reserved.
//

#import "SEGBluetooth.h"
#import <CoreBluetooth/CBCentralManager.h>

@interface SEGBluetooth () <CBCentralManagerDelegate>

@property (nonatomic, strong) CBCentralManager *manager;
@property (nonatomic, assign) dispatch_queue_t queue;

@end

@implementation SEGBluetooth

- (id)init {
    if (self = [super init]) {
        if ([CBCentralManager instancesRespondToSelector:@selector(initWithDelegate:queue:options:)]) {
            _queue = dispatch_queue_create("io.segment.bluetooth.queue", NULL);
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 70000
            _manager = [[CBCentralManager alloc] initWithDelegate:self queue:_queue options:@{ CBCentralManagerOptionShowPowerAlertKey: @NO }];
#else
            _manager = [[CBCentralManager alloc] initWithDelegate:self queue:_queue];
#endif
        }
    }
    return self;
}

- (BOOL)hasKnownState {
    return _manager && _manager.state != CBCentralManagerStateUnknown;
}

- (BOOL)isEnabled {
    return _manager.state == CBCentralManagerStatePoweredOn;
}

- (void)centralManagerDidUpdateState:(CBCentralManager *)central {
    // nop
}

@end
