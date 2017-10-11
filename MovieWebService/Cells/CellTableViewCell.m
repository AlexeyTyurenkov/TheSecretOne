//
//  CellTableViewCell.m
//  MovieWebService
//
//  Created by testDev on 4/11/17.
//  Copyright © 2017 TestCompany. All rights reserved.
//

#import "CellTableViewCell.h"

@implementation CellTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

+ (NSString*)cellIdentifier
{
    return @"CellTableViewCell";
}

+ (NSString *)cellIdentifierIn:(UITableView *)tableView
{
    UINib* cellNib = [UINib nibWithNibName:@"CellTableViewCell" bundle:nil];
    [tableView registerNib:cellNib forCellReuseIdentifier:@"CellTableViewCell"];
    return @"CellTableViewCell";
}

@end
