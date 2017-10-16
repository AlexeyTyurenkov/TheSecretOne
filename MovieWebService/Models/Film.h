//
//  Film.h
//  MovieWebService
//
//  Created by testDev on 4/11/17.
//  Copyright © 2017 TestCompany. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Actor.h"
#import "Director.h"

typedef enum {
    G = 0,
    PG,
    PG13,
    R,
    NC17
} FilmRating;

NS_ASSUME_NONNULL_BEGIN

@interface Film : NSObject {
    BOOL nominated;
}

@property (nonatomic) FilmRating filmRating;
@property (strong, nonatomic) NSArray *languages;
@property (strong, nonatomic) NSDate *releaseDate;
@property (strong, nonatomic) NSArray<Actor*> *cast;
@property (nonatomic, strong) NSString *name;
@property (nonatomic) double rating;
@property (nonatomic, strong) Director *director;

- (id)initWithData:(NSDictionary *)data;



@end

NS_ASSUME_NONNULL_END
