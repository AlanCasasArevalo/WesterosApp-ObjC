//
//  HouseModel.m
//  WesterosApp
//
//  Created by Alan Casas on 25/7/17.
//  Copyright © 2017 Alan Casas. All rights reserved.
//

#import "HouseModel.h"

@implementation HouseModel


+(id) initWithName: (NSString*) aHouseName
        houseWords:(NSString*) aHouseWords
        houseSigil:(SigilModel*) aHouseSigil
      houseWikiURL:(NSURL*)aHouseWikiURL{
    
    return  [[self alloc] initWithName:aHouseName
                            houseWords:aHouseWords
                            houseSigil:aHouseSigil
                          houseWikiURL:aHouseWikiURL];
    
}


-(id) initWithName: (NSString*) aHouseName
        houseWords:(NSString*) aHouseWords
        houseSigil:(SigilModel*) aHouseSigil
      houseWikiURL:(NSURL*)aHouseWikiURL{
   
    if (self = [super init]){
        // Asignamos los parametros a las variables de instancia.
        _houseName = aHouseName;
        _houseWords = aHouseWords;
        _houseSigil = aHouseSigil;
        _houseWikiURL = aHouseWikiURL;
    }
    
    return self;
    
}


@end
