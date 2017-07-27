//
//  AppDelegate.m
//  WesterosApp
//
//  Created by Alan Casas on 25/7/17.
//  Copyright © 2017 Alan Casas. All rights reserved.
//

#import "AppDelegate.h"
#import "HouseModel.h"
#import "SigilModel.h"
#import "HouseViewController.h"
#import "WebViewController.h"
#import "HousesModel.h"
#import "HousesTableViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
//    //Creamos modelo
//    SigilModel* baratheonSigil = [SigilModel initWithName:@"Deer" sigilImage:[UIImage imageNamed:@"baratheon.png"]];
//    HouseModel* baratheon = [HouseModel initWithName:@"Baratheon" houseWords:@"Our is the Fury!!" houseSigil:baratheonSigil houseWikiURL:[NSURL URLWithString:@"https://awoiaf.westeros.org/index.php/House_Baratheon"]];
//    
//    SigilModel* starkSigil = [SigilModel initWithName:@"Darewolf" sigilImage:[UIImage imageNamed:@"codeIsComing.png"]];
//    HouseModel* stark = [HouseModel initWithName:@"Stark" houseWords:@"Winter is coming!!" houseSigil:starkSigil houseWikiURL:[NSURL URLWithString:@"https://awoiaf.westeros.org/index.php/House_Stark"]];
//    
//    SigilModel* lannisterSigil = [SigilModel initWithName:@"Rampant Lion" sigilImage:[UIImage imageNamed:@"lannister.jpg"]];
//    HouseModel* lannister = [HouseModel initWithName:@"Lannister" houseWords:@"Hear my roar!!" houseSigil:lannisterSigil houseWikiURL:[NSURL URLWithString:@"https://awoiaf.westeros.org/index.php/House_Lannister"]];
//    
//    SigilModel* targaryenSigil = [SigilModel initWithName:@"Dragon with three heads" sigilImage:[UIImage imageNamed:@"targaryen.png"]];
//    HouseModel* targaryen = [HouseModel initWithName:@"Targaryen" houseWords:@"Blood and Fire!!" houseSigil:targaryenSigil houseWikiURL:[NSURL URLWithString:@"https://awoiaf.westeros.org/index.php/House_Targaryen"]];

    //Creamos controlador
//    HouseViewController* baratheonVC = [[HouseViewController alloc] initWithModel:baratheon];
//    HouseViewController* starkVC = [[HouseViewController alloc] initWithModel:stark];
//    HouseViewController* lannisterVC = [[HouseViewController alloc] initWithModel:lannister];
//    HouseViewController* targaryenVC = [[HouseViewController alloc] initWithModel:targaryen];
//    self.window.rootViewController = targaryenVC;
//    WebViewController* webVC = [[WebViewController alloc] initWithModel:stark];
//    UITabBarController *tabVC = [[UITabBarController alloc] init];
//    
//    [tabVC setViewControllers:@[starkVC,webVC]];
//    self.window.rootViewController = tabVC;
//    UINavigationController* navigationVC = [[UINavigationController alloc] initWithRootViewController:starkVC];
//    self.window.rootViewController = navigationVC;

    //Creacion de modelo
    HousesModel* houses = [[HousesModel alloc]init];
    
    //Creacion de controlador.
    HousesTableViewController* housesVC = [[HousesTableViewController alloc] initWithModel:houses
                                                                          housesTableStyle:UITableViewStylePlain];

    HouseViewController* houseVC = [[HouseViewController alloc]initWithModel:[houses starkHouseIndex:0] ];
    
    
    
    //Creamos un navigation
    UINavigationController* housesNavVC = [[UINavigationController alloc] initWithRootViewController:housesVC];
    UINavigationController* houseNavVC = [[UINavigationController alloc] initWithRootViewController:houseVC];
    
    
    //Crear combinador SplitViewController
    UISplitViewController* splitVC = [[UISplitViewController alloc] init];
    splitVC.viewControllers = @[housesNavVC, houseNavVC];
    
    //Asignacion de delegados
    splitVC.delegate = houseVC;
    housesVC.delegate = houseVC;
    
    self.window.rootViewController = splitVC;
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
