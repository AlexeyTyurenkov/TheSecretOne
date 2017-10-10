//
//  CellTableCellViewModel.h
//  MovieWebService
//
//  Created by Oleksii Tiurenkov on 10/10/17.
//  Copyright © 2017 TestCompany. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CellTableViewCell.h"
#import "Film.h"

@interface CellTableCellViewModel : NSObject

- (void)configure:(CellTableViewCell*)cell withModel: (Film*)film;


@end
