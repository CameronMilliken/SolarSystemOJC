//
//  PlanetListTableViewController.m
//  SolarSystem-C24
//
//  Created by Cameron Milliken on 2/11/19.
//  Copyright © 2019 Cameron Milliken. All rights reserved.
//

#import "PlanetListTableViewController.h"
#import "CRMPlanetController.h"
#import "PlanetCRM.h"
#import "CRMPlanetDetailViewController.h"

@interface PlanetListTableViewController ()

@end

@implementation PlanetListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [[CRMPlanetController planets] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"planetCell" forIndexPath:indexPath];
    
    // Need my planet for the cell
    PlanetCRM *planet = [CRMPlanetController planets][[indexPath row] ];
//    [[cell textLabel] text] = [[planet] name];
    cell.textLabel.text = planet.name;
    cell.detailTextLabel.text = [NSString stringWithFormat: @"planet %@", @(indexPath.row +1)];
    cell.imageView.image = [UIImage imageNamed:planet.imageName];
    
    return cell;
}




#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // IIDOO
    if ([segue.identifier isEqualToString:@"toDetailVC"]) {
        CRMPlanetDetailViewController *detailVC = segue.destinationViewController;
        NSIndexPath *index = [self.tableView indexPathForSelectedRow];
        PlanetCRM *planetToSend = [CRMPlanetController planets][index.row];
        planetToSend = [detailVC planet];
    }
}


@end
