//
//  HouseViewController.h
//  WesterosApp
//
//  Created by Alan Casas on 25/7/17.
//  Copyright © 2017 Alan Casas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HouseModel.h"
#import "HousesTableViewController.h"

@interface HouseViewController : UIViewController <UISplitViewControllerDelegate, HousesTableViewControllerDelegate>

@property(strong, nonatomic)HouseModel* houseModel;

@property(strong, nonatomic) IBOutlet UILabel* houseNameLabel;
@property(strong, nonatomic) IBOutlet UILabel* houseWordsLabel;
@property(strong, nonatomic) IBOutlet UIImageView* houseSigilImage;

@property(nonatomic, copy) NSArray <UIBarButtonItem *> *rightBarButtonItems;

-(id)initWithModel:(HouseModel*) aHouseModel;


@end
