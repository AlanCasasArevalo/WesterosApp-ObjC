//
//  HousesTableViewController.m
//  WesterosApp
//
//  Created by Alan Casas on 25/7/17.
//  Copyright © 2017 Alan Casas. All rights reserved.
//

#import "HousesTableViewController.h"
#import "HouseViewController.h"

@interface HousesTableViewController ()

@end

@implementation HousesTableViewController


-(id) initWithModel: (HousesModel*) aHousesModel
   housesTableStyle: (UITableViewStyle) aHousesTableStyle{
    
    if (self = [super initWithStyle: aHousesTableStyle]){
        _housesModel = aHousesModel;
        
        self.title = @" Westeros ";
    }
    
    return self;
    
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
//    self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:0.92 green:0.95 blue:0.94 alpha:1];
    
    
}

-(NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if (section == STARK_HOUSE_SECTION) {
        return @"STARK";
    }else if (section == BARATHEON_HOUSE_SECTION){
        return @"BARATHEON";
    }else if (section == LANNISTER_HOUSE_SECTION){
        return @"LANNISTER";
    }else {
        return @"TARGARYEN";
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    if (section == STARK_HOUSE_SECTION) {
        return [self.housesModel starkHouseCount];
    }else if (section == BARATHEON_HOUSE_SECTION){
        return self.housesModel.baratheonHouseCount;
    }else if (section == LANNISTER_HOUSE_SECTION){
        return  self.housesModel.lannisterHouseCount;
    }else {
        return self.housesModel.targaryenHouseCount;
    }
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    static NSString *cellID = @"HouseCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: cellID];

    // Configure the cell...
    
    if (cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle
                                      reuseIdentifier:cellID];
    }
    
    //Averiguar que modelo es el que pregunta la tabla
    HouseModel* house = nil;
    
    if (indexPath.section == STARK_HOUSE_SECTION){
        house = [self.housesModel starkHouseIndex:indexPath.row];
    }else if (indexPath.section == BARATHEON_HOUSE_SECTION){
        house = [self.housesModel baratheonHouseIndex:indexPath.row];
    }else if (indexPath.section == LANNISTER_HOUSE_SECTION){
        house = [ self.housesModel lannisterHouseIndex:indexPath.row];
    }else{
        house = [self.housesModel targaryenHouseIndex:indexPath.row];
    }
    
    //Sincronizacion de celda y modelo.
    cell.imageView.image = house.houseSigil.sigilImage;
    cell.textLabel.text = house.houseName;
    cell.detailTextLabel.text = house.houseWords;
    
    return cell;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //Supondremos que estamos en un navigationController.
    
    //Averiguar que casa es la que ha seleccionado el usuario
    HouseModel* house = nil;
    
    if (indexPath.section == STARK_HOUSE_SECTION){
        house = [self.housesModel starkHouseIndex:indexPath.row];
    }else if (indexPath.section == BARATHEON_HOUSE_SECTION){
        house = [self.housesModel baratheonHouseIndex:indexPath.row];
    }else if (indexPath.section == LANNISTER_HOUSE_SECTION){
        house = [ self.housesModel lannisterHouseIndex:indexPath.row];
    }else{
        house = [self.housesModel targaryenHouseIndex:indexPath.row];
    }

    
    
//    //Crear controlador para la casa seleccionada
//    HouseViewController* houseVC = [[HouseViewController alloc] initWithModel:house];
//    
//    //Agregamos el viewcontroller al navigation
//    [self.navigationController pushViewController:houseVC animated:YES];
//
    [self.delegate housesTableViewController:self didSelectedHouse:house];
}








@end













































