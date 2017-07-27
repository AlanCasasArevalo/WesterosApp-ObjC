//
//  HousesTableViewController.h
//  WesterosApp
//
//  Created by Alan Casas on 25/7/17.
//  Copyright © 2017 Alan Casas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HousesModel.h"

#define STARK_HOUSE_SECTION 0
#define LANNISTER_HOUSE_SECTION 1
#define TARGARYEN_HOUSE_SECTION 2
#define BARATHEON_HOUSE_SECTION 3

@class HousesTableViewController;

@protocol HousesTableViewControllerDelegate <NSObject>

-(void) housesTableViewController: (HousesTableViewController*) housesVC
                 didSelectedHouse: (HouseModel *) aHouseModel;

@end

@interface HousesTableViewController : UITableViewController

@property (strong, nonatomic) HousesModel* housesModel;
@property (weak, nonatomic) id <HousesTableViewControllerDelegate> delegate;

-(id) initWithModel: (HousesModel*) aHousesModel
   housesTableStyle: (UITableViewStyle) aHousesTableStyle;

@end



