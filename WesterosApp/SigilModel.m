//
//  SigilModel.m
//  WesterosApp
//
//  Created by Alan Casas on 25/7/17.
//  Copyright © 2017 Alan Casas. All rights reserved.
//

#import "SigilModel.h"

@implementation SigilModel

+(id) initWithName:(NSString*) aSigilDescription
        sigilImage:(UIImage*) aSigilImage{
    
    return [[self alloc] initWithName:aSigilDescription
                           sigilImage:aSigilImage];
    
}

-(id) initWithName:(NSString*) aSigilDescription
        sigilImage:(UIImage*) aSigilImage{
    
    if (self = [super init]) {
        _sigilDescription = aSigilDescription;
        _sigilImage = aSigilImage;
    }
    
    return self;
}

@end
