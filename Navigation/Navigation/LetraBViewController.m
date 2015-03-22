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
    _imagem=[[UIImageView alloc] initWithFrame:CGRectMake( 100.0f, 150.0f, 120.0f,90.0f )];
    _caixa=[[UITextField alloc] init];
    _asd=[[UILabel alloc] init];
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemSave target: self action:@selector(save:)];
    self.navigationItem.rightBarButtonItem=next;
//    _botao=[[UIButton alloc] init];
//    [_botao setFrame:CGRectMake( 50.0, 210.0, 200.0, 30.0)];
//    [_botao setTitle:@"Salvar" forState:UIControlStateNormal];
//    [_botao setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
//    [_botao addTarget:self action:@selector(save:) forControlEvents:UIControlEventAllTouchEvents];
    [_asd setFrame:CGRectMake( 80.0, 150.0, 200.0, 30.0)];
    [_asd setText:@"Insira uma nova frase"];
    [_caixa setFrame:CGRectMake( 60.0, 180.0, 200.0, 30.0)];
    [_caixa setText:[[single.info objectAtIndex:single.position ] frase]];
    [_caixa setBorderStyle:UITextBorderStyleBezel];
    [_caixa setTextColor:[UIColor blackColor]];
    [self.view addSubview:_caixa];
    [self.view addSubview:_imagem];
    [self.view addSubview:_asd];
//    [self.view addSubview:_botao];

}
-(void)save:(id)sender{
    InfoDic *a=[single.info objectAtIndex:single.position];
    a.frase=self.caixa.text;
    [single.info setObject:a atIndexedSubscript:single.position];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
