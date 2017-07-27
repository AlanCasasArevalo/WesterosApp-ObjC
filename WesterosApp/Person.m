//
//  Person.m
//  WesterosApp
//
//  Created by Alan Casas on 25/7/17.
//  Copyright © 2017 Alan Casas. All rights reserved.
//

#import "Person.h"

@implementation Person

+(id) initWithName: (NSString*) aNamePerson
       housePerson: (HouseModel*) aHousePerson
       aliasPerson:(NSString*) anAliasPerson{
    
    return [[self alloc] initWithName:aNamePerson
                          housePerson:aHousePerson
                          aliasPerson:anAliasPerson];

}

+(id) initWithName:(NSString *)aNamePerson
       housePerson:(HouseModel *)aHousePerson{
    return [[self alloc] initWithName:aNamePerson
                          housePerson:aHousePerson];
}

-(id) initWithName: (NSString*) aNamePerson
       housePerson: (HouseModel*) aHousePerson
       aliasPerson:(NSString*) anAliasPerson{
    
    if ( self = [super init]){
        _namePerson = aNamePerson;
        _housePerson = aHousePerson;
        _aliasPerson = anAliasPerson;
    }
    
    return self;
}

-(id) initWithName: (NSString*) aNamePerson
       housePerson: (HouseModel*) aHousePerson{
    return [self initWithName:aNamePerson
                  housePerson:aHousePerson
                  aliasPerson:nil];
}


@end
