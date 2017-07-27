//
//  HousesModel.m
//  WesterosApp
//
//  Created by Alan Casas on 25/7/17.
//  Copyright © 2017 Alan Casas. All rights reserved.
//

#import "HousesModel.h"

@interface HousesModel ()

@property (strong, nonatomic) NSArray* starkHouse;
@property (strong, nonatomic) NSArray* baratheonHouse;
@property (strong, nonatomic) NSArray* lannisterHouse;
@property (strong, nonatomic) NSArray* targaryenHouse;

@end

@implementation HousesModel

//@property (readonly, nonatomic) int starkHouseCount;
//@property (readonly, nonatomic) int lannisterHouseCount;
//@property (readonly, nonatomic) int targaryenHouseCount;
//@property (readonly, nonatomic) int baratheonHouseCount;


-(NSInteger)starkHouseCount {
    return [self.starkHouse count];
}
-(NSInteger)lannisterHouseCount {
    return [self.lannisterHouse count];
}
-(NSInteger)targaryenHouseCount {
    return [self.targaryenHouse count];
}
-(NSInteger)baratheonHouseCount {
    return [self.baratheonHouse count];
}


-(id) init{
    
    if (self = [super init]){
        //Creamos modelo
        SigilModel* baratheonSigil = [SigilModel initWithName:@"Deer" sigilImage:[UIImage imageNamed:@"baratheon.png"]];
        HouseModel* baratheon = [HouseModel initWithName:@"Baratheon" houseWords:@"Our is the Fury!!" houseSigil:baratheonSigil houseWikiURL:[NSURL URLWithString:@"https://awoiaf.westeros.org/index.php/House_Baratheon"]];
        
        SigilModel* starkSigil = [SigilModel initWithName:@"Darewolf" sigilImage:[UIImage imageNamed:@"codeIsComing.png"]];
        HouseModel* stark = [HouseModel initWithName:@"Stark" houseWords:@"Winter is coming!!" houseSigil:starkSigil houseWikiURL:[NSURL URLWithString:@"https://awoiaf.westeros.org/index.php/House_Stark"]];
        
        SigilModel* lannisterSigil = [SigilModel initWithName:@"Rampant Lion" sigilImage:[UIImage imageNamed:@"lannister.jpg"]];
        HouseModel* lannister = [HouseModel initWithName:@"Lannister" houseWords:@"Hear my roar!!" houseSigil:lannisterSigil houseWikiURL:[NSURL URLWithString:@"https://awoiaf.westeros.org/index.php/House_Lannister"]];
        
        SigilModel* targaryenSigil = [SigilModel initWithName:@"Dragon with three heads" sigilImage:[UIImage imageNamed:@"targaryen.png"]];
        HouseModel* targaryen = [HouseModel initWithName:@"Targaryen" houseWords:@"Blood and Fire!!" houseSigil:targaryenSigil houseWikiURL:[NSURL URLWithString:@"https://awoiaf.westeros.org/index.php/House_Targaryen"]];
        

        self.starkHouse = @[stark];
        self.baratheonHouse = @[baratheon];
        self.lannisterHouse = @[lannister];
        self.targaryenHouse = @[targaryen];
        
    }
    
    return  self;
}

-(HouseModel*) starkHouseIndex:(NSInteger) index{
    return [self.starkHouse objectAtIndex:index];
}
-(HouseModel*) lannisterHouseIndex:(NSInteger) index{
    return [self.lannisterHouse objectAtIndex:index];
}
-(HouseModel*) targaryenHouseIndex:(NSInteger) index{
    return [self.targaryenHouse objectAtIndex:index];
}
-(HouseModel*) baratheonHouseIndex:(NSInteger) index{
    return [self.baratheonHouse objectAtIndex:index];
}

@end



































