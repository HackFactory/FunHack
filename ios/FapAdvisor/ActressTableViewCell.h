//
//  ActressTableViewCell.h
//  FapAdvisor
//
//  Created by whoami on 1/27/18.
//  Copyright © 2018 Mountain Viewer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ActressTableViewCell : UITableViewCell

@property (nonatomic, strong) NSString *name;

@property (nonatomic, strong) NSString *rating;
@property (nonatomic, strong) NSString *link;

@property (nonatomic, strong) UIImage *image;

@property (nonatomic, strong) NSString *cupSize;
@property (nonatomic, strong) NSString *hairColor;
@property (nonatomic, strong) NSString *ethnicity;
@property (nonatomic, strong) NSString *age;

@property (nonatomic, strong) NSString *videos;
@property (nonatomic, strong) NSString *views;

@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *ratingLabel;
@property (weak, nonatomic) IBOutlet UILabel *videosLabel;
@property (weak, nonatomic) IBOutlet UILabel *viewsLabel;



@end
