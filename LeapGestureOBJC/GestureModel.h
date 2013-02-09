//
//  GestureModel.h
//  LeapGestureOBJC
//
//  Created by cj on 2/8/13.
//  Copyright (c) 2013 cdesch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GestureModel : NSObject {
    
    
}

@property (nonatomic,readwrite) int numStates;
@property (nonatomic,readwrite) int numObservations;
@property (nonatomic,strong)    Quantizer* quantizer;
@property (nonatomic,strong)    HiddenMarkovModel* markovmodell;
@property (nonatomic,readwrite) double DefaultProbability;
@property (nonatomic,strong)  NSString* name;

- (id)init;

@end
