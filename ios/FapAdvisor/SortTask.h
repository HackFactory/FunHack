//
//  SortTask.h
//  FapAdvisor
//
//  Created by whoami on 1/28/18.
//  Copyright © 2018 Mountain Viewer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SortTask : NSObject

@property (nonatomic, strong) NSNumber* value;
@property (nonatomic) NSUInteger pos;

- (id)init;
- (id)initWithValue:(NSNumber*)value andPos:(NSUInteger)pos;

@end
