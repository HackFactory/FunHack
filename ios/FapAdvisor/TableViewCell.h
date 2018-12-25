//
//  TableViewCell.h
//  FapAdvisor
//
//  Created by whoami on 1/27/18.
//  Copyright © 2018 Mountain Viewer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *cellImageView;
@property (weak, nonatomic) IBOutlet UILabel *cellLabel;
@property (strong, nonatomic) NSString *imageName;
@property (strong, nonatomic) NSString *alternativeImageName;

@end

