//
//  NSObject+SEGSubscripting.h
//  Analytics
//
//  Created by Travis Jeffery on 7/14/14.
//  Copyright (c) 2014 Segment.io. All rights reserved.
//

#import <Foundation/Foundation.h>

#if __IPHONE_OS_VERSION_MAX_ALLOWED < 60000

@interface NSObject (SEGSubscripting)

- (id)objectAtIndexedSubscript:(NSUInteger)idx;
- (void)setObject:(id)obj atIndexedSubscript:(NSUInteger)idx;
- (void)setObject:(id)obj forKeyedSubscript:(id <NSCopying>)key;
- (id)objectForKeyedSubscript:(id)key;

@end

#endif
