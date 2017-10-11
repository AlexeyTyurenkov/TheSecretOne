//
//  PresnterProtocol.h
//  MovieWebService
//
//  Created by Oleksii Tiurenkov on 10/11/17.
//  Copyright © 2017 TestCompany. All rights reserved.
//

@protocol RouterProtocol;
@protocol PresenterProtocol <NSObject>

@property (nonatomic) id<RouterProtocol> router;

@end
