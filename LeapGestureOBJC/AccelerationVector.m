//
//  AccelerationVector.m
//  LeapGestureOBJC
//
//  Created by cj on 2/8/13.
//  Copyright (c) 2013 cdesch. All rights reserved.
//

#import "AccelerationVector.h"

@implementation AccelerationVector

- (id)initWithX:(double)xVector withY:(double)yVector withZ:(double)zVector{
    
    if (self = [super init]) {
        self.x = xVector;
        self.y = yVector;
        self.z = zVector;
        
    }
    return self;
}

@end
