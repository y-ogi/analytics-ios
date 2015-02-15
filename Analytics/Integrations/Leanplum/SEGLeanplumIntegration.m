//
//  SEGLeanplumIntegration.m
//  Analytics
//
//  Created by Prateek Srivastava on 2015-02-15.
//  Copyright (c) 2015 Segment.io. All rights reserved.
//

#import "SEGLeanplumIntegration.h"

#import "SEGAnalyticsUtils.h"
#import "SEGAnalytics.h"

#import <Leanplum/Leanplum.h>

@implementation SEGLeanplumIntegration

+ (void)load {
  [SEGAnalytics registerIntegration:self withIdentifier:@"Leanplum"];
}

- (id)init {
  if (self = [super init]) {
    self.name = @"Leanplum";
    self.valid = NO;
    self.initialized = NO;
  }
  return self;
}

- (void)validate {
  BOOL hasAppId = [self.settings objectForKey:@"appId"] != nil;
  BOOL hasClientKey = [self.settings objectForKey:@"clientKey"] != nil;
  self.valid = hasAppId && hasClientKey;
}

- (void)start
{
  NSString *appId = [self.settings objectForKey:@"appId"];
  NSString *clientKey = [self.settings objectForKey:@"clientKey"];

  [Leanplum setAppId:appId withProductionKey:clientKey];
  if (self.settings[@"syncResourcesAsync"]) {
    [Leanplum syncResourcesAsync:YES];
  }
  if (self.settings[@"trackInAppPurchases"]) {
    [Leanplum trackInAppPurchases];
  }
  if (self.settings[@"trackAllAppScreens"]) {
    [Leanplum trackAllAppScreens];
  }
  [Leanplum start];

  SEGLog(@"LeanplumIntegration initialized with appId %@ & clientKey %@", appId, clientKey);
}

- (void)track:(NSString *)event properties:(NSDictionary *)properties options:(NSDictionary *)options {
  NSNumber *value = [properties objectForKey:@"value"] ?: @1;
  NSString *info = [properties objectForKey:@"info"];

  [Leanplum track:event withValue:[value doubleValue] andInfo:info andParameters:properties];
}

- (void)screen:(NSString *)screenTitle properties:(NSDictionary *)properties options:(NSDictionary *)options {
  NSString *info = [properties objectForKey:@"info"];

  [Leanplum advanceTo:screenTitle withInfo:info andParameters:properties];
}

@end
