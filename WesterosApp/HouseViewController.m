//
//  HouseViewController.m
//  WesterosApp
//
//  Created by Alan Casas on 25/7/17.
//  Copyright © 2017 Alan Casas. All rights reserved.
//

#import "HouseViewController.h"
#import "HousesTableViewController.h"
#import "WebViewController.h"

@implementation HouseViewController

-(id)initWithModel:(HouseModel*) aHouseModel{
    
    if (self = [super initWithNibName:nil
                               bundle:nil]) {
        _houseModel = aHouseModel;
        
        self.title = aHouseModel.houseName;
    }
    
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
//    if (self.splitViewController.displayMode == UISplitViewControllerDisplayModePrimaryHidden) {
//        self.navigationItem.rightBarButtonItem = self.splitViewController.displayModeButtonItem;
//    }
    
    [self syncModelWithView];
    
    [self setupUI];
}

-(void) setupUI {
    
    NSArray *rightButtons;
    
    UIBarButtonItem* wiki = [[UIBarButtonItem alloc]initWithTitle:@"Wiki" style:UIBarButtonItemStylePlain target:self action: @selector(displayWeb)];
    
    UIBarButtonItem* members = [[UIBarButtonItem alloc]initWithTitle:@"Personajes" style:UIBarButtonItemStylePlain target:self action:@selector(displayMembers)];
    
    if (self.splitViewController.displayMode == UISplitViewControllerDisplayModePrimaryHidden) {
        rightButtons = @[self.splitViewController.displayModeButtonItem, wiki, members];
    }else {
        rightButtons = @[wiki, members];
    }

    
    self.navigationItem.rightBarButtonItems = rightButtons;
    
}

-(void)displayWeb {

    WebViewController* webVC = [[WebViewController alloc] initWithModel:self.houseModel];
    
    [self.navigationController pushViewController:webVC animated:YES];
    
}

-(void) displayMembers{
    
    NSLog(@"Personajes ");
    
}

-(void) syncModelWithView {
    
    self.houseNameLabel.text = self.houseModel.houseName;
    self.houseWordsLabel.text = self.houseModel.houseWords;
    self.houseSigilImage.image = self.houseModel.houseSigil.sigilImage;
    
}


-(void)splitViewController:(UISplitViewController *)svc willChangeToDisplayMode:(UISplitViewControllerDisplayMode)displayMode{
    
    if (self.splitViewController.displayMode == UISplitViewControllerDisplayModePrimaryHidden){
        self.navigationItem.rightBarButtonItem = self.splitViewController.displayModeButtonItem;
    }
    
}

-(void)housesTableViewController:(HousesTableViewController *)housesVC
                didSelectedHouse:(HouseModel *)aHouseModel{
    
    self.houseModel = aHouseModel;
    self.title = aHouseModel.houseName;
    
    [self syncModelWithView];
    
}







@end





















































