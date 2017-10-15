//
//  Film.m
//  MovieWebService
//
//  Created by testDev on 4/11/17.
//  Copyright © 2017 TestCompany. All rights reserved.
//

#import "Film.h"
#import "Actor.h"
#import "Director.h"

@implementation Film {
    NSString* _name;
}



- (id)initWithData:(NSDictionary *)data {
    self = [super init];
    if (self) {
        self.filmRating = [[data objectForKey:@"filmRating"] doubleValue];
        self.languages = [data objectForKey:@"languages"];
        [self setNominated:[[data objectForKey:@"nominated"] boolValue]];
        self.releaseDate = [NSDate dateWithTimeIntervalSince1970:[[data objectForKey:@"releaseDate"] intValue]];
        self.name = [data objectForKey:@"name"];
        self.rating = [[data objectForKey:@"rating"] doubleValue];
        self.director = [[Director alloc] initWithData:[data objectForKey:@"director"]];
        self.director.film = self;
        NSMutableArray *castsList = [NSMutableArray new];
        NSArray *castsData = [data objectForKey:@"cast"];
        for (NSDictionary *castData in castsData) {
            Actor *actor = [[Actor alloc] initWithData:castData];
            actor.film = self;
            [castsList addObject:actor];
        }
        self.cast = [castsList copy];
    }
    return self;
}


- (void)setName:(NSString *)newName {
    if (newName != _name) {
        _name = newName;
    }
}

- (NSString *)name
{
    return _name;
}


- (void)setNominated:(BOOL)nominate;
{
    nominated = nominate;
}

@end
