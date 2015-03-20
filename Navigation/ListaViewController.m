//
//  ListaViewController.m
//  Navigation
//
//  Created by Humberto  Julião on 19/03/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import "ListaViewController.h"
#import "Singleton.h"
#import "CellABC.h"

@interface ListaViewController ()
{
    Singleton *single;
}
@end

@implementation ListaViewController
@synthesize tableView;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    single=[Singleton sharedInstance];
    
    tableView=[[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320, 460) style:UITableViewStylePlain];
    tableView.delegate=self;
    tableView.dataSource=self;
    [self.view addSubview:tableView];
    self.tabBarItem.title=@"Dicionário";
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 26;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier=@"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellABC"];
    if (cell == nil)
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CellABC"];
    
    cell.textLabel.text=[[[single info] objectAtIndex:indexPath.row] titulo];
    
    return cell;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
