//
//  LetraAViewController.m
//  Navigation
//
//  Created by Vinicius Miana on 2/23/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraAViewController.h"
#import "LetraBViewController.h"
#import "Singleton.h"
#import "InfoDic.h"
@implementation LetraAViewController




-(void) viewDidLoad {
    [super viewDidLoad];
    Singleton *single = [Singleton sharedInstance];
    InfoDic *part=[single.info objectAtIndex:single.position];
    self.title = part.titulo;
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    UIButton *botao = [UIButton
                                        buttonWithType:UIButtonTypeSystem];
    [botao
     setTitle:part.frase
     forState:UIControlStateNormal];
    [botao sizeToFit];
    botao.center = self.view.center;
    
    [self.view addSubview:botao];
    
 
}

-(void)next:(id)sender {
    LetraBViewController *proximo = [[LetraBViewController alloc]
                                              initWithNibName:nil
                                            bundle:NULL];
    [self.navigationController pushViewController:proximo
                                         animated:YES];
    
}




@end
