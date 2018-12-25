//
//  SortTask.m
//  FapAdvisor
//
//  Created by whoami on 1/28/18.
//  Copyright © 2018 Mountain Viewer. All rights reserved.
//

#import "SortTask.h"

@implementation SortTask

- (id)initWithValue:(NSNumber *)value andPos:(NSUInteger)pos {
    self = [super init];
    
    if (self) {
        self.value = value;
        self.pos = pos;
    }
    
    return self;
}

- (id)init {
    return [self initWithValue:@0 andPos:0];
}

@end
