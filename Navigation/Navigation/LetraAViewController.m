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
    
    UIBarButtonItem *back = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:self action:@selector(back:)];
    self.navigationItem.leftBarButtonItem=back;
    
    _botao=[[UILabel alloc] init];
    [_botao setFrame:CGRectMake( 60.0, 200.0, 200.0, 200.0)];
    [_botao setText:part.frase];
    [_botao setTextAlignment:NSTextAlignmentCenter];
//    _botao.center = self.view.center;
    [self.view addSubview:_botao];
    
    //-----comentando para testar como UILabel.
//    _botao = [UIButton buttonWithType:UIButtonTypeSystem];
//    [_botao setFrame:CGRectMake( 0.0, 0.0, 200.0, 200.0)];
//    [_botao setTitle:part.frase forState:UIControlStateNormal];
////    [_botao setFrame:CGRectMake(200.0, 200.0, 200.0, 200.0)];
//    _botao.center = self.view.center;
////    [_botao setFrame:CGRectMake(200.0, 200.0, 200.0, 200.0)];
//    [self.view addSubview:_botao];
    
    _imagem=[[UIImageView alloc] initWithFrame:CGRectMake( 100.0f, 150.0f, 120.0f,90.0f )];

    
    NSString *path=[[NSBundle mainBundle] pathForResource:[part.titulo lowercaseString] ofType:@"jpg"];
    self.imagem.image=[UIImage imageWithContentsOfFile:path];
    [_imagem setContentMode:UIViewContentModeScaleAspectFit];
    [UIView animateWithDuration:2.0 animations:^{
        _imagem.alpha = 0.0;
        _imagem.alpha = 1.0;
    }];
    [self.view addSubview:_imagem];
    
//    UITabBarController*

}


-(void)back:(id)sender {
//    LetraAViewController *anterior = [[LetraAViewController alloc] initWithNibName:nil bundle:NULL];
    
    if(single.position<=0){
        single.position=25;
    }else{
        single.position--;
    }
    InfoDic* proxItem=[single.info objectAtIndex:single.position];
    
    self.title = [[single.info objectAtIndex:single.position] titulo];
    _botao.text=[[single.info objectAtIndex:single.position] frase];
    [_botao setTextAlignment:NSTextAlignmentCenter];
//    _botao.titleLabel.text=[[single.info objectAtIndex:single.position] frase];

    NSString *path=[[NSBundle mainBundle] pathForResource:[proxItem.titulo lowercaseString] ofType:@"jpg"];
    self.imagem.image=[UIImage imageWithContentsOfFile:path];
    [UIView animateWithDuration:1.0 animations:^{
        _imagem.alpha = 0.0;
        _imagem.alpha = 1.0;
    }];
    
    
}
-(void)next:(id)sender {
    
    if(single.position>=25){
        single.position=0;
    }else{
        single.position++;
    }
    
    InfoDic* proxItem=[single.info objectAtIndex:single.position];
    
    self.title = [[single.info objectAtIndex:single.position] titulo];
    _botao.text=[[single.info objectAtIndex:single.position] frase];
    [_botao setTextAlignment:NSTextAlignmentCenter];
//    _botao.titleLabel.text=[[single.info objectAtIndex:single.position] frase];
    
    NSString *path=[[NSBundle mainBundle] pathForResource:[proxItem.titulo lowercaseString] ofType:@"jpg"];
    self.imagem.image=[UIImage imageWithContentsOfFile:path];
    [UIView animateWithDuration:1.0 animations:^{
        _imagem.alpha = 0.0;
        _imagem.alpha = 1.0;
    }];

//    self.title = [[single.info objectAtIndex:single.position] titulo];
//    _botao.titleLabel.text=[[single.info objectAtIndex:single.position] frase];
//    NSString *path=[[NSBundle mainBundle] pathForResource:[[[single.info objectAtIndex:single.position] titulo] lowercaseString] ofType:@"jpg"];
//    self.imagem.image=[UIImage imageWithContentsOfFile:path];
    
    
}




@end
