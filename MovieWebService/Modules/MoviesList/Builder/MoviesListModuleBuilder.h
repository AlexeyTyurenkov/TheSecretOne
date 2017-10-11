//
//  MoviesListAssembly.h
//  MovieWebService
//
//  Created by testDev on 11/04/2017.
//  Copyright © 2017 Agoda Services Co. Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ModuleBuilderProtocol.h"

@interface MoviesListModuleBuilder: NSObject<ModuleBuilderProtocol>



- (UIViewController *)build;


@end
