//
//  AccelerationVector.h
//  LeapGestureOBJC
//
//  Created by cj on 2/8/13.
//  Copyright (c) 2013 cdesch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AccelerationVector : NSObject {
    
    
}

@property (nonatomic,readwrite) double x;
@property (nonatomic,readwrite) double y;
@property (nonatomic,readwrite) double z;

- (id)initWithX:(double)xVector withY:(double)yVector withZ:(double)zVector;


@end
