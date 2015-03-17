//
//  Singleton.h
//  Navigation
//
//  Created by Humberto  Julião on 16/03/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Singleton : NSObject
@property NSMutableArray* info;
@property int position;

+(id)sharedInstance;
-(NSMutableArray*)start;


@end
