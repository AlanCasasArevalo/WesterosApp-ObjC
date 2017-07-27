//
//  HouseModel.h
//  WesterosApp
//
//  Created by Alan Casas on 25/7/17.
//  Copyright © 2017 Alan Casas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SigilModel.h"

@interface HouseModel : NSObject

@property (strong, nonatomic) NSString *houseName;
@property (strong, nonatomic) NSString *houseWords;
@property (strong, nonatomic) SigilModel *houseSigil;
@property (strong, nonatomic) NSURL *houseWikiURL;


+(id) initWithName: (NSString*) aHouseName
        houseWords:(NSString*) aHouseWords
        houseSigil:(SigilModel*) aHouseSigil
      houseWikiURL:(NSURL*)aHouseWikiURL;


// Inicializador designado
-(id) initWithName: (NSString*) aHouseName
        houseWords:(NSString*) aHouseWords
        houseSigil:(SigilModel*) aHouseSigil
      houseWikiURL:(NSURL*)aHouseWikiURL;

@end
