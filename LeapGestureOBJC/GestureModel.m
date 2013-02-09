//
//  GestureModel.m
//  LeapGestureOBJC
//
//  Created by cj on 2/8/13.
//  Copyright (c) 2013 cdesch. All rights reserved.
//

#import "GestureModel.h"

@implementation GestureModel


- (id)init{
    if (self = [super init]) {

        
        self.numStates = 15; // states empirical value
        self.numObservations = 20; // observations empirical value
        self.markovmodell = new HiddenMarkovModel(numStates, numObservations); // init model
        self.quantizer = new Quantizer(numStates); // init quantizer
    }
    return self;
}


@end
