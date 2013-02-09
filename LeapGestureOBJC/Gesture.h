//
//  Gesture.h
//  LeapGestureOBJC
//
//  Created by cj on 2/8/13.
//  Copyright (c) 2013 cdesch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AccelerationVector.h"

@interface Gesture : NSObject <NSCopying> {

}
@property (nonatomic,readwrite) BOOL minmaxmanual;
@property (nonatomic,readwrite) double minacc;
@property (nonatomic,readwrite) double maxacc;

@property (nonatomic,strong) NSMutableArray* data;

- (id)init;
- (void)add:(AccelerationVector *)acceleration;
- (NSMutableArray*)getData;


@end
