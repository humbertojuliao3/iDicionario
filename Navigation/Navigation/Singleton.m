//
//  Singleton.m
//  Navigation
//
//  Created by Humberto  Julião on 16/03/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import "Singleton.h"
#import "InfoDic.h"

@implementation Singleton

@synthesize info,position;

static Singleton *SINGLE=nil;

static bool isFirstTime=YES;

+(id)sharedInstance{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        isFirstTime=NO;
        SINGLE=[[super allocWithZone:NULL] init];
        [SINGLE start];
        SINGLE.position=0;
    });
    
    return SINGLE;
}

-(void)start{
    //inicio da declaração de posições
    
    NSArray*infoTitulo=[[NSArray alloc] initWithObjects:@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"O",@"P",@"Q",@"R",@"S",@"T",@"U",@"V",@"W",@"X",@"Y",@"Z", nil];
    
    NSArray*infoFrase=[[NSArray alloc] initWithObjects:@"A de avião",@"B de bola",@"C de Coração",@"D de docinho",@"E de escola",@"F de feijão",@"G de gente",@"H de humano",@"I de igualdade",@"J de juventude",@"K de kiwi",@"L de laranja",@"M de molecagem",@"N de natureza",@"O de ovo",@"P de pato",@"Q de queijo",@"R de riacho",@"S de sorvete",@"T de terra",@"U de uva",@"V de vidro",@"W de WiiU",@"X de xadrez",@"Y de Yu-Gi-Oh!",@"Z de zebra", nil];
    
    NSArray*infoImagem=[[NSArray alloc] initWithObjects:@"/Users/humbertojuliao/iDicionario/imagens trab/a.jpg",@"/Users/humbertojuliao/iDicionario/imagens trab/b.png",@"/Users/humbertojuliao/iDicionario/imagens trab/c.jpg",@"/Users/humbertojuliao/iDicionario/imagens trab/d.jpg",@"/Users/humbertojuliao/iDicionario/imagens trab/e.png",@"/Users/humbertojuliao/iDicionario/imagens trab/f.jpg",@"/Users/humbertojuliao/iDicionario/imagens trab/g.jpg",@"/Users/humbertojuliao/iDicionario/imagens trab/h.jpg",@"/Users/humbertojuliao/iDicionario/imagens trab/i.jpg",@"/Users/humbertojuliao/iDicionario/imagens trab/j.jpg",@"/Users/humbertojuliao/iDicionario/imagens trab/k.jpg",@"/Users/humbertojuliao/iDicionario/imagens trab/l.jpg",@"/Users/humbertojuliao/iDicionario/imagens trab/m.jpg",@"/Users/humbertojuliao/iDicionario/imagens trab/n.jpg",@"/Users/humbertojuliao/iDicionario/imagens trab/o.jpg",@"/Users/humbertojuliao/iDicionario/imagens trab/p.jpg",@"/Users/humbertojuliao/iDicionario/imagens trab/q.jpg",@"/Users/humbertojuliao/iDicionario/imagens trab/r.jpg",@"/Users/humbertojuliao/iDicionario/imagens trab/s.jpg",@"/Users/humbertojuliao/iDicionario/imagens trab/t.jpg",@"/Users/humbertojuliao/iDicionario/imagens trab/u.jpg",@"/Users/humbertojuliao/iDicionario/imagens trab/v.jpg",@"/Users/humbertojuliao/iDicionario/imagens trab/w.jpg",@"/Users/humbertojuliao/iDicionario/imagens trab/x.jpg",@"/Users/humbertojuliao/iDicionario/imagens trab/y.jpg",@"/Users/humbertojuliao/iDicionario/imagens trab/z.jpg", nil];
    
    //inicio das atribuições
    
    NSMutableArray*partT=[[NSMutableArray alloc] initWithArray:infoTitulo];
    NSMutableArray*partF=[[NSMutableArray alloc] initWithArray:infoFrase];
    NSMutableArray*partI=[[NSMutableArray alloc] initWithArray:infoImagem];
    for(int i=0; i<26; i++) {
        InfoDic *parcial=[[InfoDic alloc] initWithTitulo:[partT objectAtIndex:i] andFrase:[partF objectAtIndex:i] andImagem:[partI objectAtIndex:i]];
        [info addObject:parcial];
    }
}
//inserir metodos de passar e voltar
@end
