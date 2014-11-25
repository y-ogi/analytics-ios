// IntercomIntegration.m
// Copyright (c) 2014 Segment.io. All rights reserved.

#import "SEGIntercomIntegration.h"
#import <Intercom.h>
#import <objc/message.h>
#import "SEGAnalyticsUtils.h"
#import "SEGAnalytics.h"

@implementation SEGFlurryIntegration

#pragma mark - Initialization

+ (void)load {
  [SEGAnalytics registerIntegration:self withIdentifier:@"Intercom"];
}

- (id)init {
  if (self = [super init]) {
    self.name = @"Intercom";
    self.valid = NO;
    self.initialized = NO;
  }
  return self;
}

- (void)start {
  NSString *appId = [self.settings objectForKey:@"appId"];
  NSString *apiKey = [self.settings objectForKey:@"apiKey"];
  [Intercom setApiKey:apiKey forAppId:appId];
  SEGLog(@"IntercomIntegration initialized.");
}


#pragma mark - Settings

- (void)validate
{
  BOOL hasAPIKey = [self.settings objectForKey:@"apiKey"] != nil;
  BOOL hasAppId = [self.settings objectForKey:@"appId"] != nil;
  self.valid = hasAPIKey && hasAppId;
}


#pragma mark - Analytics API

- (void)identify:(NSString *)userId traits:(NSDictionary *)traits options:(NSDictionary *)options
{
  NSMutableDictionary *formattedTraits = [[NSMutableDictionary alloc] init];
  NSString *name = [traits objectForKey:@"name"];
  NSString *created = [traits objectForKey:@"created"] || [traits objectForKey:@"createdAt"] || [traits objectForKey:@"created_at"];
  NSString *remote_created_at = [traits objectForKey:@"remote_created_at"];
  NSString *unsubscribed = [traits objectForKey:@"unsubscribed_from_emails"];

  if (name) { formattedTraits[@"name"] = name }
  if (created) { formattedTraits[@"created_at"] = created }
  if (remote_created_at) { formattedTraits[@"remote_created_at"] = remote_created_at }
  if (unsubscribed) { formattedTraits[@"unsubscribed_from_emails"] = unsubscribed }



  formattedTraits[@"custom_attributes"] = [[NSMutableDictionary alloc] init];

  for (NSString *key in traits) {
    //set traits to "custom_attributes"
    if (key != @"company" && key != @"companies" && key != @"name" && key != @"email"){
      NSString* traitValue = [NSString stringWithFormat:@"%@", [traits objectForKey:key]];
      formattedTraits[@"custom_attributes"][key] = traitValue;
    }
    if (key == @"company") {
      NSDictionary* company = [traits objectForKey:key]];
      formattedTraits[@"companies"] = [[NSMutableArray alloc] init];
      formattedTraits[@"companies"][0] = company
    }
    if (key == @"companies") {
      NSArray* companies = [traits objectForKey:key]];
      formattedTraits[@"companies"] = companies
    }
  }

  [Intercom updateUserWithAttributes:formattedTraits completion:^(NSError *error) {
    [self handleError:error];
  }];


  // Need to figure out proper approach for beginning sessions
  // https://github.com/intercom/intercom-ios/blob/318d12f5dcf13cdce1384c321da05ba9c089b6da/Intercom/Intercom.h#L130-L144
  // also ending session on logout


  // if (validateEmail(userId)) {
  //   [Intercom beginSessionForUserWithEmail:userId
  //   completion:^(NSError *error) {
  //     if (!error) {
  //       // handle success
  //     } else {
  //       // handle error
  //    }
  //   }];
  // } else {
  //   [Intercom beginSessionForUserWithUserId:userId
  //   completion:^(NSError *error) {
  //     if (!error) {
  //       [Intercom updateUserWithAttributes:formattedTraits completion:^(NSError *error) {
  //         [self handleError:error];
  //       }];
  //     }
  //   }];
  // }

}

- (void)track:(NSString *)event properties:(NSDictionary *)properties options:(NSDictionary *)options
{
  if (properties){
    [Intercom logEventWithName:event optionalMetaData:properties
    completion:^(NSError *error) {
      //[self handleError:error];
    }];
  } else {
    [Intercom logEventWithName:event
      completion:^(NSError *error) {
        //[self handleError:error];
      }
    ];
  }
}
