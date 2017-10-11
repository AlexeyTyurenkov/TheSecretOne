//
//  RouterProtocol.h
//  MovieWebService
//
//  Created by Oleksii Tiurenkov on 10/10/17.
//  Copyright © 2017 TestCompany. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PresenterProtocol;

@protocol RouterProtocol <NSObject>


- (instancetype)initWithWindow:(UIWindow*)window andNavigationController: (UINavigationController*)navigationController;
- (UIViewController*)initialControllerWithPresenter:(id<PresenterProtocol>)presenter;

@end


