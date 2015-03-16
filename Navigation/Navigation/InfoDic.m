//
//  InfoDic.m
//  Navigation
//
//  Created by Humberto  Julião on 16/03/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import "InfoDic.h"

@implementation InfoDic
@synthesize titulo,frase,imagem;

//@synthesize titulo,frase,imagem;
-(instancetype)initWithTitulo:(NSString *)t andFrase:(NSString *)f andImagem:(NSString *)i{
    self.titulo=t;
    self.frase=f;
    self.imagem=i;
    return self;
}



@end
