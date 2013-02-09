//
//  Gesture.m
//  LeapGestureOBJC
//
//  Created by cj on 2/8/13.
//  Copyright (c) 2013 cdesch. All rights reserved.
//

#import "Gesture.h"

@implementation Gesture

- (id)init{
    if (self = [super init]) {
        self.data = [[NSMutableArray alloc] init];
        
    }
    return self;
}



- (id)copyWithZone:(NSZone *)zone
{
    // We'll ignore the zone for now
    Gesture *another = [[Gesture allocWithZone:zone] init];
    another.data = self.data;
    
    return another;
}
/**
 * Adds a new acceleration event to this gesture.
 *
 * @param event The WiimoteAccelerationEvent to add.
 */
- (void)add:(AccelerationVector *)acceleration{
    
    [self.data addObject:acceleration];
}


- (NSMutableArray*)getData{
    
    return self.data;
}

- (AccelerationVector*)getLastData{
    
    return [self.data lastObject];
}


- (void)removeFirstData{
    
    [self.data removeObjectAtIndex:0];
}

- (int)getCountOfData{
    
    return (int) [self.data count];
}


/*
- (NSInteger)getCountOfData{
    
    return  [self.data count];
}*/

- (void)setMaxAndMinAcceleration:(double)max withMin:(double)min{
    
    self.maxacc = max;
    self.minacc = min;
    self.minmaxmanual = TRUE;
}

- (double)getMaxAcceleration{
    
    if (!self.minmaxmanual){
        
        double max = DBL_MIN;
        
        for (int i = 0; i < [self.data count]; i++){
            
            AccelerationVector* accVector = [self.data objectAtIndex:i];
            
            if (abs(accVector.x) > max){
                max = abs(accVector.x);
            }
            
            if (abs(accVector.y) > max){
                max = abs(accVector.y);
            }
            
            if (abs(accVector.z) > max){
                max = abs(accVector.z);
            }
            
        }
        
        return max;
        
    }else{
        
        return self.maxacc;
    }
}

- (double)getMinAcceleration{
    
    if (!self.minmaxmanual){
        
        double min = DBL_MAX;
        
        for (int i = 0; i < [self.data count]; i++){
        
            AccelerationVector* accVector = [self.data objectAtIndex:i];
            
            if (abs(accVector.x) < min){
                min = abs(accVector.x);
            }
            
            if (abs(accVector.y) < min){
                min = abs(accVector.y);
            }
            
            if (abs(accVector.z) < min){
                min = abs(accVector.z);
            }
            
        }
        
        return min;
        
    }else{
        
        return self.minacc;
    }
}

@end
