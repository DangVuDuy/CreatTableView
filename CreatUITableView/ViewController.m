//
//  ViewController.m
//  CreatUITableView
//
//  Created by Dang Vu Duy on 1/4/16.
//  Copyright © 2016 Dang Vu Duy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController
{
    NSArray *Model;
    NSArray *Measure;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Beautiful Girl";
    Model = @[@"Ngoc Trinh", @"Rebecca", @"Taylor"];
    Measure = @[@"85-60-90", @"75-58-85", @"80-63-85"];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    
    
}
- (NSInteger) tableView: (UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell = [cell initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
    
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@", Model[indexPath.row]];
    cell.textLabel.textColor = [UIColor redColor];
    cell.imageView.image = [UIImage imageNamed: Model[indexPath.row]];
    cell.detailTextLabel.text = Measure[indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;

}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 90;
}
@end
