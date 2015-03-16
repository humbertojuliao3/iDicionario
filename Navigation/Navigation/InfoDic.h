//
//  InfoDic.h
//  Navigation
//
//  Created by Humberto  Julião on 16/03/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InfoDic : NSObject

@property NSString* titulo;
@property NSString* frase;
@property NSString* imagem;

-(instancetype)initWithTitulo:(NSString*)titulo andFrase:(NSString*)frase andImagem:(NSString*)imagem;


@end
