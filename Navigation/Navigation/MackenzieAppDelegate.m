//
//  MackenzieAppDelegate.m
//  Navigation
//
//  Created by Vinicius Miana on 2/21/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieAppDelegate.h"
#import "LetraAViewController.h"
#import "ListaABC.h"
#import "ListaViewController.h"

@implementation MackenzieAppDelegate
@synthesize tabBar;
@synthesize navController,viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    viewController=[[ListaViewController alloc] init];
    navController=[[UINavigationController alloc] initWithRootViewController:viewController];
    [_window addSubview:[navController view]];
    //------Inicio do que funciona-----
    self.tabBar=[[UITabBarController alloc] init];
    
    ListaViewController*table=[[ListaViewController alloc] initWithNibName:nil bundle:nil];
    
    LetraAViewController *viewControllerA = [[LetraAViewController alloc] initWithNibName:nil bundle:nil];
    ListaABC *lista=[[ListaABC alloc] initWithNibName:nil bundle:nil];
    
//    NSArray *viewArray=[NSArray arrayWithObjects:viewControllerA,viewControllerB, nil];
    self.navigationControllerA = [[UINavigationController alloc]
                                 initWithRootViewController:viewControllerA];
    self.navigationControllerB = [[UINavigationController alloc]
                                 initWithRootViewController:lista];
    
    NSArray *viewArray=[NSArray arrayWithObjects:self.navigationControllerA,table, nil];
    
    self.tabBar.viewControllers=viewArray;
    
    UIImage *image=[UIImage imageNamed:@"Brick-32-2.png"];
    
    viewControllerA.navigationController.tabBarItem.title=@"Palavra";
    viewControllerA.navigationController.tabBarItem.image=image;
    table.tabBarItem.title=@"Dicionário";
    table.tabBarItem.image=image;
//    lista.navigationController.tabBarItem.image=image;
    
    self.window = [[UIWindow alloc]
                   initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = self.tabBar;


    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}
     //-------Precisa?-----
//-(void)dealloc{
//    [navController release];
//    [_window release];
//    [super dealloc];
//}


@end
