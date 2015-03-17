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
        SINGLE.info=[SINGLE start];
        SINGLE.position=0;
    });
    
    return SINGLE;
}

-(NSMutableArray*)start{
    //inicio da declaração de posições
    
    NSArray*infoTitulo=[[NSArray alloc] initWithObjects:@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"O",@"P",@"Q",@"R",@"S",@"T",@"U",@"V",@"W",@"X",@"Y",@"Z", nil];
    
    NSArray*infoFrase=[[NSArray alloc] initWithObjects:@"A de avião",@"B de bola",@"C de Coração",@"D de docinho",@"E de escola",@"F de feijão",@"G de gente",@"H de humano",@"I de igualdade",@"J de juventude",@"K de kiwi",@"L de laranja",@"M de molecagem",@"N de natureza",@"O de ovo",@"P de pato",@"Q de queijo",@"R de riacho",@"S de sorvete",@"T de terra",@"U de uva",@"V de vidro",@"W de WiiU",@"X de xadrez",@"Y de Yu-Gi-Oh!",@"Z de zebra", nil];
    
    NSArray*infoImagem=[[NSArray alloc] initWithObjects:@"a.jpg",@"b.png",@"c.jpg",@"d.jpg",@"e.png",@"f.jpg",@"g.jpg",@"h.jpg",@"i.jpg",@"j.jpg",@"k.jpg",@"l.jpg",@"m.jpg",@"n.jpg",@"o.jpg",@"p.jpg",@"q.jpg",@"r.jpg",@"s.jpg",@"t.jpg",@"u.jpg",@"v.jpg",@"w.jpg",@"x.jpg",@"y.jpg",@"z.jpg", nil];
    
    //inicio das atribuições
    NSMutableArray *retorno=[[NSMutableArray alloc] init];
    NSMutableArray*partT=[[NSMutableArray alloc] initWithArray:infoTitulo];
    NSMutableArray*partF=[[NSMutableArray alloc] initWithArray:infoFrase];
    NSMutableArray*partI=[[NSMutableArray alloc] initWithArray:infoImagem];
    for(int i=0; i<26; i++) {
        InfoDic *parcial=[[InfoDic alloc] initWithTitulo:[partT objectAtIndex:i] andFrase:[partF objectAtIndex:i] andImagem:[partI objectAtIndex:i]];
        
        [retorno addObject:parcial];
    }
    return retorno;
}
//inserir metodos de passar e voltar
@end
