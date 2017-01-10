//
//  ViewController.m
//  SingleViewTutorial
//
//  Created by Harman on 10/01/17.
//  Copyright © 2017 Harman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(strong,nonatomic)IBOutlet UITableView *tableView;
@property(strong,nonatomic)NSArray *amadeus;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.amadeus = @[@"this",@"that"];
    
    // Do any additional setup after loading the view, typically from a nib.
}


#pragma DataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.amadeus.count;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
   UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = self.amadeus[indexPath.row];
    cell.detailTextLabel.text = @"MyAPP";
    return cell;
    
}




#pragma Delegate




@end
