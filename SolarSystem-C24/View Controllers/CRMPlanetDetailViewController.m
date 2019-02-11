//
//  CRMPlanetDetailViewController.m
//  SolarSystem-C24
//
//  Created by Cameron Milliken on 2/11/19.
//  Copyright © 2019 Cameron Milliken. All rights reserved.
//

#import "CRMPlanetDetailViewController.h"
#import "PlanetCRM.h"

@interface CRMPlanetDetailViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *planetImageView;
@property (weak, nonatomic) IBOutlet UILabel *distanceFromSunLabel;
@property (weak, nonatomic) IBOutlet UILabel *diameterlabel;

@property (weak, nonatomic) IBOutlet UILabel *dayLengthLabel;


@end

@implementation CRMPlanetDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self updateWithPlanet:self.planet];
    
}

-(void)updateWithPlanet:(PlanetCRM *)planet
{
    self.title = planet.name;
    self.planetImageView.image = [UIImage imageNamed: planet.imageName];
    self.diameterlabel.text = [NSString stringWithFormat:@"%@", @(planet.diameter)];
    self.distanceFromSunLabel.text = [NSString stringWithFormat:@"%@ 10^km", @(planet.millionKMsFromSun)];
    self.dayLengthLabel.text = [NSString stringWithFormat:@"%@ hours", @(planet.dayLength)];
}


@end
