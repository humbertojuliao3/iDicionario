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
{
    Singleton *single;
}

-(void) viewDidLoad {
    [super viewDidLoad];
    single = [Singleton sharedInstance];
    
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
//    
    UIImageView *imagem;
    imagem=[[UIImageView alloc] initWithFrame:CGRectMake( 100.0f, 150.0f, 120.0f,90.0f )];
    NSData *dat=[[NSData alloc] initWithContentsOfFile:(part.imagem)];
//    imagem.image=[UIImage imageWithData:dat];
    
    [imagem setImage:[UIImage imageNamed:part.imagem]];
    [imagem setContentMode:UIViewContentModeScaleAspectFit];
    
//    [imagem sizeToFit];
//    imagem.center=self.view.center;
//    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 7, 190, 23)];
//    imageView.image= [UIImage imageNamed:@"a.jpg"];
    [self.view addSubview:imagem];

}



-(void)next:(id)sender {
    LetraAViewController *proximo = [[LetraAViewController alloc]
                                              initWithNibName:nil
                                            bundle:NULL];
    single.position++;
//    [self.navigationController popToViewController: animated:<#(BOOL)#>];
    [self.navigationController pushViewController:proximo
                                         animated:YES];
    
}




@end
