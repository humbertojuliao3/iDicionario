//
//  CellABC.m
//  Navigation
//
//  Created by Humberto  Julião on 19/03/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import "CellABC.h"

@implementation CellABC
@synthesize valor;

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
