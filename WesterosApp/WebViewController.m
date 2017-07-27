//
//  WebViewController.m
//  WesterosApp
//
//  Created by Alan Casas on 25/7/17.
//  Copyright © 2017 Alan Casas. All rights reserved.
//

#import "WebViewController.h"
@implementation WebViewController

-(id) initWithModel: (HouseModel*) aHouseModel{
    
    if (self = [super initWithNibName:nil
                               bundle:nil]){
        
        _houseModel = aHouseModel;
        self.title = @"Web";
        
    }
    return self;
}

-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    [self displayURL : self.houseModel.houseWikiURL];
    
}

-(void)displayURL:(NSURL*) aHouseWikiURL{
    
    self.browser.delegate = self;
    
    self.activityView.hidden = NO;
    [self.activityView startAnimating];
    
    [self.browser loadRequest:[NSURLRequest requestWithURL:aHouseWikiURL]];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// UIWebViewDelegate
-(void)webViewDidFinishLoad:(UIWebView *)webView{
    [self.activityView stopAnimating];
    
    [self.activityView setHidden:YES];
}










@end

























