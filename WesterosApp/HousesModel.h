//
//  HousesModel.h
//  WesterosApp
//
//  Created by Alan Casas on 25/7/17.
//  Copyright © 2017 Alan Casas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HouseModel.h"

@interface HousesModel : NSObject

@property (readonly, nonatomic) NSInteger starkHouseCount;
@property (readonly, nonatomic) NSInteger lannisterHouseCount;
@property (readonly, nonatomic) NSInteger targaryenHouseCount;
@property (readonly, nonatomic) NSInteger baratheonHouseCount;

-(HouseModel*) starkHouseIndex:(NSInteger) index;
-(HouseModel*) lannisterHouseIndex:(NSInteger) index;
-(HouseModel*) targaryenHouseIndex:(NSInteger) index;
-(HouseModel*) baratheonHouseIndex:(NSInteger) index;

@end
