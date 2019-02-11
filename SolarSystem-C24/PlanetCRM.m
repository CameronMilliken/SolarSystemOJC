//
//  PlanetCRM.m
//  SolarSystem-C24
//
//  Created by Cameron Milliken on 2/11/19.
//  Copyright © 2019 Cameron Milliken. All rights reserved.
//

#import "PlanetCRM.h"

@implementation PlanetCRM

-(instancetype)initWithName: (NSString *)name
                   diameter:(NSInteger)diameter
                  dayLength:(float)dayLength
          millionKMsFromSun:(float)millionKMsFromSun;

{
    self = [super init];
    if (self) {
        _name = name;
        _imageName = [name lowercaseString];
        _diameter = diameter;
        _dayLength = dayLength;
        _millionKMsFromSun = millionKMsFromSun;
    }
    return self;
}

@end
