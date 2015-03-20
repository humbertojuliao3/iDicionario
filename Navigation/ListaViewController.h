//
//  ListaViewController.h
//  Navigation
//
//  Created by Humberto  Julião on 19/03/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListaViewController.h"

@interface ListaViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    UITableView* tableView;
    NSArray *theArray;
}
@property(nonatomic,retain)UITableView*tableView;

@end
