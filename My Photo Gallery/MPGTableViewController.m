//
//  MPGTableViewController.m
//  My Photo Gallery
//
//  Created by Polykoi Rotenberg on 19/08/2015.
//  Copyright (c) 2015 Polykoi Rotenberg. All rights reserved.
//

#import "MPGTableViewController.h"

@interface MPGTableViewController () <UITableViewDataSource, UITableViewDelegate>

@end

@implementation MPGTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -$UITableViewDataSource protocol methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[MPGGallery sharedInstance] getGalleryItemsCount];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"cellIdentifier";
    MPGTableViewCell *cell = (MPGTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    cell.titleLabel.text = [[[MPGGallery sharedInstance] getGalleryContentAtIndex:[indexPath row]] title];
    cell.thumbnailImageView.image = [UIImage imageNamed:[[[MPGGallery sharedInstance] getGalleryContentAtIndex:[indexPath row]] imageFileName]];
    
    return cell;
}

@end
