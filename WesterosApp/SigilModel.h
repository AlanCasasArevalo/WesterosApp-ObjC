//
//  SigilModel.h
//  WesterosApp
//
//  Created by Alan Casas on 25/7/17.
//  Copyright © 2017 Alan Casas. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

@interface SigilModel : NSObject

@property (strong, nonatomic) NSString *sigilDescription;
@property (strong, nonatomic) UIImage *sigilImage;

+(id) initWithName:(NSString*) aSigilDescription
        sigilImage:(UIImage*) aSigilImage;

-(id) initWithName:(NSString*) aSigilDescription
        sigilImage:(UIImage*) aSigilImage;

@end
