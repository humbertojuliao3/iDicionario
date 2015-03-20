//
//  LetraBViewController.m
//  Navigation
//
//  Created by Vinicius Miana on 2/23/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraBViewController.h"
#import "Singleton.h"
#import "InfoDic.h"
@implementation LetraBViewController
{
    Singleton *single;
}

-(void) viewDidLoad {
    [self.caixa setText:[[single.info objectAtIndex:single.position] frase]];
    
}


@end
