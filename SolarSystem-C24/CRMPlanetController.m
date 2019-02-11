//
//  CRMPlanetController.m
//  SolarSystem-C24
//
//  Created by Cameron Milliken on 2/11/19.
//  Copyright © 2019 Cameron Milliken. All rights reserved.
//

#import "CRMPlanetController.h"
#import "PlanetCRM.h"

@implementation CRMPlanetController

+ (NSArray *)planets
{
    PlanetCRM *mercury = [[PlanetCRM alloc] initWithName: @"Mercury" diameter: 4879 dayLength: 4222.6 millionKMsFromSun: 57.9];
    
    PlanetCRM *venus = [[PlanetCRM alloc] initWithName: @"Venus" diameter: 12104 dayLength: 2802 millionKMsFromSun: 108.2];
    
    PlanetCRM *earth = [[PlanetCRM alloc] initWithName: @"Earth" diameter: 12756 dayLength: 24 millionKMsFromSun: 149.6];
    
    PlanetCRM *mars = [[PlanetCRM alloc] initWithName: @"Mars" diameter: 6792 dayLength: 24.7 millionKMsFromSun: 227.9];
    
    PlanetCRM *jupiter = [[PlanetCRM alloc] initWithName: @"Jupiter" diameter: 142984 dayLength: 9.9 millionKMsFromSun: 778.6];
    
    PlanetCRM *saturn = [[PlanetCRM alloc] initWithName: @"Saturn" diameter: 120536 dayLength: 10.7 millionKMsFromSun: 1433.5];
    
    PlanetCRM *uranus = [[PlanetCRM alloc] initWithName: @"Uranus" diameter: 51118 dayLength: 17.2 millionKMsFromSun: 2872.5];
    
    PlanetCRM *neptune = [[PlanetCRM alloc] initWithName: @"Neptune" diameter: 49528 dayLength: 16.1 millionKMsFromSun: 4495.1];
    
    PlanetCRM *pluto = [[PlanetCRM alloc] initWithName: @"Pluto" diameter: 2370 dayLength: 153.3 millionKMsFromSun: 5906.4];
    
    return @[mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto];
}
@end
