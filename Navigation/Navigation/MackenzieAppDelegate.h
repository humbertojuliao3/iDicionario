//
//  MackenzieAppDelegate.h
//  Navigation
//
//  Created by Vinicius Miana on 2/21/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListaABC.h"
#import "ListaViewController.h"

@interface MackenzieAppDelegate : UIResponder <UIApplicationDelegate>
{
    UINavigationController* navController;
}

@property (nonatomic,retain) UINavigationController *navController;
@property (nonatomic,retain) ListaViewController *viewController;
@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, strong) UINavigationController *navigationControllerA;
@property (nonatomic, strong) UINavigationController *navigationControllerB;
@property (nonatomic, strong) UITabBarController *tabBar;


@end
