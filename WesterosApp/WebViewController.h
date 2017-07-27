//
//  WebViewController.h
//  WesterosApp
//
//  Created by Alan Casas on 25/7/17.
//  Copyright © 2017 Alan Casas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HouseModel.h"


@interface WebViewController : UIViewController <UIWebViewDelegate>

@property(strong, nonatomic) HouseModel* houseModel;

@property(strong, nonatomic) IBOutlet UIWebView* browser;
@property(strong, nonatomic) IBOutlet UIActivityIndicatorView* activityView;


-(id) initWithModel: (HouseModel*) aHouseModel;

@end
