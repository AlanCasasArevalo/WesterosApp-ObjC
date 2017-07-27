//
//  Person.h
//  WesterosApp
//
//  Created by Alan Casas on 25/7/17.
//  Copyright © 2017 Alan Casas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HouseModel.h"

@interface Person : NSObject

@property (strong, nonatomic) NSString* namePerson;
@property (strong, nonatomic) HouseModel* housePerson;
@property (strong, nonatomic) NSString* aliasPerson;

+(id) initWithName: (NSString*) aNamePerson
        housePerson: (HouseModel*) aHousePerson
        aliasPerson:(NSString*) anAliasPerson;

+(id) initWithName: (NSString*) aNamePerson
       housePerson: (HouseModel*) aHousePerson;

-(id) initWithName: (NSString*) aNamePerson
       housePerson: (HouseModel*) aHousePerson
       aliasPerson:(NSString*) anAliasPerson;

-(id) initWithName: (NSString*) aNamePerson
       housePerson: (HouseModel*) aHousePerson;

@end
