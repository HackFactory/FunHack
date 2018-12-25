//
//  PopularViewController.m
//  FapAdvisor
//
//  Created by whoami on 1/27/18.
//  Copyright © 2018 Mountain Viewer. All rights reserved.
//

#import "PopularViewController.h"
#import "SWRevealViewController.h"
#import "ActressTableViewCell.h"

#import <SafariServices/SafariServices.h>
#import <NYAlertViewController.h>

@interface PopularViewController ()

@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) NSArray<NSString *> *names;
@property (strong, nonatomic) NSArray<NSString *> *ratings;
@property (strong, nonatomic) NSArray<NSString *> *links;

@property (strong, nonatomic) NSArray<NSString *> *images;

@property (strong, nonatomic) NSArray<NSString *> *cupSizes;
@property (strong, nonatomic) NSArray<NSString *> *hairColors;
@property (strong, nonatomic) NSArray<NSString *> *ethnicities;
@property (strong, nonatomic) NSArray<NSString *> *ages;

@property (strong, nonatomic) NSArray<NSString *> *videos;
@property (strong, nonatomic) NSArray<NSString *> *views;

@property (weak, nonatomic) IBOutlet UIButton *buttonObject;

@end

@implementation PopularViewController

- (void)initVideos {
    self.videos = @[@"1529",
                    @"1728",
                    @"738",
                    @"2437",
                    @"651",
                    @"945",
                    @"731",
                    @"1011",
                    @"1705",
                    @"918",
                    @"382",
                    @"1733",
                    @"594",
                    @"1196",
                    @"217"];
}

- (void)initViews {
    self.views = @[@"595M",
                   @"410M",
                   @"449M",
                   @"665M",
                   @"509M",
                   @"469M",
                   @"327M",
                   @"429M",
                   @"385M",
                   @"362M",
                   @"398M",
                   @"431M",
                   @"239M",
                   @"275M",
                   @"251M"];
}

- (void)initNames {
    self.names = @[@"Riley Reid",
                   @"Mia Khalifa",
                   @"August Ames",
                   @"Lisa Ann",
                   @"Brandi Love",
                   @"Dillion Harper",
                   @"Nicole Aniston",
                   @"Madison Ivy",
                   @"Alexis Texas",
                   @"Mia Malkova",
                   @"Kimmy Granger",
                   @"Asa Akira",
                   @"Kendra Lust",
                   @"Sasha Grey",
                   @"Kim Kardashian"];
}

- (void)initRatings {
    self.ratings = @[@"1",
                     @"2",
                     @"3",
                     @"4",
                     @"5",
                     @"6",
                     @"7",
                     @"8",
                     @"9",
                     @"10",
                     @"11",
                     @"12",
                     @"13",
                     @"14",
                     @"15"];
}

- (void)initLinks {
    self.links = @[@"https://www.pornhub.com/pornstar/riley-reid",
                   @"https://www.pornhub.com/pornstar/mia-khalifa",
                   @"https://www.pornhub.com/pornstar/august-ames",
                   @"https://www.pornhub.com/pornstar/lisa-ann",
                   @"https://www.pornhub.com/pornstar/brandi-love",
                   @"https://www.pornhub.com/pornstar/dillion-harper",
                   @"https://www.pornhub.com/pornstar/nicole-aniston",
                   @"https://www.pornhub.com/pornstar/madison-ivy",
                   @"https://www.pornhub.com/pornstar/alexis-texas",
                   @"https://www.pornhub.com/pornstar/mia-malkova",
                   @"https://www.pornhub.com/pornstar/kimmy-granger",
                   @"https://www.pornhub.com/pornstar/asa-akira",
                   @"https://www.pornhub.com/pornstar/kendra-lust",
                   @"https://www.pornhub.com/pornstar/sasha-grey",
                   @"https://www.pornhub.com/pornstar/kim-kardashian"];
}

- (void)initImages {
    self.images = @[@"1.jpg",
                    @"2.jpg",
                    @"3.jpg",
                    @"4.jpg",
                    @"5.jpg",
                    @"6.jpg",
                    @"7.jpg",
                    @"8.jpg",
                    @"9.jpg",
                    @"10.jpg",
                    @"11.jpg",
                    @"12.jpg",
                    @"13.jpg",
                    @"14.jpg",
                    @"15.jpg"];
}

- (void)initCupSizes {
    self.cupSizes = @[@"1",
                      @"4",
                      @"4",
                      @"4",
                      @"3",
                      @"3",
                      @"3",
                      @"4",
                      @"2",
                      @"3",
                      @"3",
                      @"3",
                      @"4",
                      @"2",
                      @"4"];
}

- (void)initHairColors {
    self.hairColors = @[];
}

- (void)initEthnicities {
    self.ethnicities = @[@"белый",
                         @"белый",
                         @"белый",
                         @"белый",
                         @"белый",
                         @"белый",
                         @"белый",
                         @"белый",
                         @"белый",
                         @"белый",
                         @"белый",
                         @"белый",
                         @"белый",
                         @"белый",
                         @"белый"];
}

- (void)initAges {
    self.ages = @[@"20-30",
                  @"20-30",
                  @"20-30",
                  @"40-99",
                  @"40-99",
                  @"20-30",
                  @"30-40",
                  @"20-30",
                  @"30-40",
                  @"20-30",
                  @"18-20",
                  @"30-40",
                  @"30-40",
                  @"20-30",
                  @"30-40"];
}
- (IBAction)button:(UIButton *)sender {
    [self performSegueWithIdentifier:@"personalize" sender:self];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 15;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"Cell";
    
    ActressTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    cell.image = [UIImage imageNamed:self.images[indexPath.row]];
    cell.name = self.names[indexPath.row];
    cell.rating = self.ratings[indexPath.row];
    cell.link = self.links[indexPath.row];
    
    cell.videos = self.videos[indexPath.row];
    cell.views = self.views[indexPath.row];
    
    cell.cupSize = self.cupSizes[indexPath.row];
    cell.hairColor = self.hairColors[indexPath.row];
    cell.ethnicity = self.ethnicities[indexPath.row];
    cell.age = self.ages[indexPath.row];
    
    cell.imgView.image = cell.image;
    cell.nameLabel.text = [NSString stringWithFormat:@"%@", cell.name];
    cell.ratingLabel.text = [NSString stringWithFormat:@"Рейтинг: %@ место", cell.rating];
    cell.viewsLabel.text = [NSString stringWithFormat:@"Просмотры: %@", cell.views];
    cell.videosLabel.text = [NSString stringWithFormat:@"Видео: %@", cell.videos];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NYAlertViewController *alertVC = [[NYAlertViewController alloc] init];
    
    alertVC.title = self.names[indexPath.row];
    alertVC.titleFont = [UIFont fontWithName:@"AvenirNext-Regular" size:25.0];
    alertVC.titleColor = [UIColor blackColor];
    
    alertVC.message = [NSString stringWithFormat:@"\nВозраст: %@\n Цвет кожи: %@\n Размер груди: %@\n\n Рейтинг: %@ место\n Видео: %@\n Просмотры: %@", self.ages[indexPath.row], self.ethnicities[indexPath.row], self.cupSizes[indexPath.row], self.ratings[indexPath.row], self.videos[indexPath.row], self.views[indexPath.row]];
    alertVC.messageFont = [UIFont fontWithName:@"AvenirNext-Regular" size:17.0];
    
    alertVC.cancelButtonColor = [UIColor colorWithRed:253.0 / 255.0 green:152.0 / 255.0 blue:39.0 / 255.0 alpha:1];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    imageView.clipsToBounds = YES;
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    imageView.image = [UIImage imageNamed:self.images[indexPath.row]];
    
    alertVC.alertViewContentView = imageView;
    
    NYAlertAction *okAction = [NYAlertAction actionWithTitle:@"OK"
                                                       style:UIAlertActionStyleCancel
                                                     handler:^(NYAlertAction *action) {
                                                         [self dismissViewControllerAnimated:YES completion:nil];
                                                     }];
    
    NYAlertAction *visitAction = [NYAlertAction actionWithTitle:@"Find on Pornhub" style:UIAlertActionStyleCancel handler:^(NYAlertAction *action) {
        NSString *webAddress = self.links[indexPath.row];
        NSURL *url = [[NSURL alloc] initWithString:webAddress];
        SFSafariViewController *safariVC = [[SFSafariViewController alloc] initWithURL:url];
        dispatch_async(dispatch_get_main_queue(), ^ {
            [alertVC presentViewController:safariVC animated:YES completion:nil];
        });
    }];
    
    [alertVC addAction:okAction];
    [alertVC addAction:visitAction];
    
    [self presentViewController:alertVC animated:YES completion:nil];
}

- (void)configureRevealVC {
    SWRevealViewController *revealViewController = self.revealViewController;
    
    if (revealViewController) {
        [self.sidebarButton setTarget: self.revealViewController];
        [self.sidebarButton setAction: @selector(revealToggle:)];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
}

- (void)configureButton {
    self.buttonObject.layer.cornerRadius = 7;
    self.buttonObject.layer.borderWidth = 0.5;
    self.buttonObject.layer.borderColor = [UIColor whiteColor].CGColor;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureRevealVC];
    
    [self initVideos];
    [self initViews];
    [self initNames];
    [self initRatings];
    [self initLinks];
    [self initImages];
    [self initCupSizes];
    [self initEthnicities];
    [self initAges];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    [self configureButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
