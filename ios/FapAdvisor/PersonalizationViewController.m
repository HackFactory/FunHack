//
//  PersonalizationViewController.m
//  FapAdvisor
//
//  Created by whoami on 1/27/18.
//  Copyright © 2018 Mountain Viewer. All rights reserved.
//

#import "PersonalizationViewController.h"
#import <NYAlertViewController.h>
#import <SafariServices/SafariServices.h>
#import "SortTask.h"

@interface PersonalizationViewController ()

@property (strong, nonatomic) NSArray<NSString *> *names;
@property (strong, nonatomic) NSArray<NSString *> *surnames;
@property (strong, nonatomic) NSArray<NSString *> *boobs;
@property (strong, nonatomic) NSArray<NSString *> *eths;
@property (strong, nonatomic) NSArray<NSString *> *ages;
@property (strong, nonatomic) NSArray<NSString *> *images;
@property (strong, nonatomic) NSArray<NSString *> *ratings;
@property (strong, nonatomic) NSArray<NSString *> *groans;
@property (strong, nonatomic) NSArray<NSString *> *links;
@property (strong, nonatomic) NSArray<NSString *> *donuts;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *backButton;

@property (weak, nonatomic) IBOutlet UISlider *slider;

@property (weak, nonatomic) IBOutlet UIImageView *imgView;

@property (weak, nonatomic) IBOutlet UIImageView *imgView1;
@property (weak, nonatomic) IBOutlet UIImageView *imgView2;
@property (weak, nonatomic) IBOutlet UIImageView *imgView3;
@property (weak, nonatomic) IBOutlet UIImageView *imgView4;

@property (weak, nonatomic) IBOutlet UILabel *name1;
@property (weak, nonatomic) IBOutlet UILabel *surname1;

@property (weak, nonatomic) IBOutlet UILabel *name2;
@property (weak, nonatomic) IBOutlet UILabel *surname2;

@property (weak, nonatomic) IBOutlet UILabel *name3;
@property (weak, nonatomic) IBOutlet UILabel *surname3;

@property (weak, nonatomic) IBOutlet UILabel *name4;
@property (weak, nonatomic) IBOutlet UILabel *surname4;

@property (nonatomic) NSUInteger first;
@property (nonatomic) NSUInteger second;
@property (nonatomic) NSUInteger third;
@property (nonatomic) NSUInteger fourth;

@property (nonatomic) NSUInteger actressOne;
@property (nonatomic) NSUInteger actressTwo;
@property (nonatomic) NSUInteger actressThree;
@property (nonatomic) NSUInteger actressFour;

@end

@implementation PersonalizationViewController

- (IBAction)button1Tapped:(id)sender {
    NYAlertViewController *alertVC = [[NYAlertViewController alloc] init];
    
    alertVC.title = [NSString stringWithFormat:@"%@ %@", self.names[self.actressOne], self.surnames[self.actressOne]];
    alertVC.titleFont = [UIFont fontWithName:@"AvenirNext-Regular" size:25.0];
    alertVC.titleColor = [UIColor blackColor];
    
    alertVC.message = [NSString stringWithFormat:@"Возраст: %@\n Рейтинг: %@ место", self.ages[self.actressOne], self.ratings[self.actressOne]];
    alertVC.messageFont = [UIFont fontWithName:@"AvenirNext-Regular" size:17.0];
    
    alertVC.cancelButtonColor = [UIColor colorWithRed:253.0 / 255.0 green:152.0 / 255.0 blue:39.0 / 255.0 alpha:1];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    imageView.clipsToBounds = YES;
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    imageView.image = [UIImage imageNamed:self.images[self.actressOne]];
    
    alertVC.alertViewContentView = imageView;
    
    NYAlertAction *okAction = [NYAlertAction actionWithTitle:@"OK"
                                                       style:UIAlertActionStyleCancel
                                                     handler:^(NYAlertAction *action) {
                                                         [self dismissViewControllerAnimated:YES completion:nil];
                                                     }];
    
    NYAlertAction *visitAction = [NYAlertAction actionWithTitle:@"Find on Pornhub" style:UIAlertActionStyleCancel handler:^(NYAlertAction *action) {
        NSString *webAddress = self.links[self.actressOne];
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

- (IBAction)button2Tapped:(id)sender {
    NYAlertViewController *alertVC = [[NYAlertViewController alloc] init];
    
    alertVC.title = [NSString stringWithFormat:@"%@ %@", self.names[self.actressTwo], self.surnames[self.actressTwo]];
    alertVC.titleFont = [UIFont fontWithName:@"AvenirNext-Regular" size:25.0];
    alertVC.titleColor = [UIColor blackColor];
    
    alertVC.message = [NSString stringWithFormat:@"Возраст: %@\n Рейтинг: %@ место", self.ages[self.actressTwo], self.ratings[self.actressTwo]];
    alertVC.messageFont = [UIFont fontWithName:@"AvenirNext-Regular" size:17.0];
    
    alertVC.cancelButtonColor = [UIColor colorWithRed:253.0 / 255.0 green:152.0 / 255.0 blue:39.0 / 255.0 alpha:1];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    imageView.clipsToBounds = YES;
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    imageView.image = [UIImage imageNamed:self.images[self.actressTwo]];
    
    alertVC.alertViewContentView = imageView;
    
    NYAlertAction *okAction = [NYAlertAction actionWithTitle:@"OK"
                                                       style:UIAlertActionStyleCancel
                                                     handler:^(NYAlertAction *action) {
                                                         [self dismissViewControllerAnimated:YES completion:nil];
                                                     }];
    
    NYAlertAction *visitAction = [NYAlertAction actionWithTitle:@"Find on Pornhub" style:UIAlertActionStyleCancel handler:^(NYAlertAction *action) {
        NSString *webAddress = self.links[self.actressTwo];
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

- (IBAction)button3Tapped:(id)sender {
    NYAlertViewController *alertVC = [[NYAlertViewController alloc] init];
    
    alertVC.title = [NSString stringWithFormat:@"%@ %@", self.names[self.actressThree], self.surnames[self.actressThree]];
    alertVC.titleFont = [UIFont fontWithName:@"AvenirNext-Regular" size:25.0];
    alertVC.titleColor = [UIColor blackColor];
    
    alertVC.message = [NSString stringWithFormat:@"Возраст: %@\n Рейтинг: %@ место", self.ages[self.actressThree], self.ratings[self.actressThree]];
    alertVC.messageFont = [UIFont fontWithName:@"AvenirNext-Regular" size:17.0];
    
    alertVC.cancelButtonColor = [UIColor colorWithRed:253.0 / 255.0 green:152.0 / 255.0 blue:39.0 / 255.0 alpha:1];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    imageView.clipsToBounds = YES;
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    imageView.image = [UIImage imageNamed:self.images[self.actressThree]];
    
    alertVC.alertViewContentView = imageView;
    
    NYAlertAction *okAction = [NYAlertAction actionWithTitle:@"OK"
                                                       style:UIAlertActionStyleCancel
                                                     handler:^(NYAlertAction *action) {
                                                         [self dismissViewControllerAnimated:YES completion:nil];
                                                     }];
    
    NYAlertAction *visitAction = [NYAlertAction actionWithTitle:@"Find on Pornhub" style:UIAlertActionStyleCancel handler:^(NYAlertAction *action) {
        NSString *webAddress = self.links[self.actressThree];
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

- (IBAction)button4Tapped:(id)sender {
    NYAlertViewController *alertVC = [[NYAlertViewController alloc] init];
    
    alertVC.title = [NSString stringWithFormat:@"%@ %@", self.names[self.actressFour], self.surnames[self.actressFour]];
    alertVC.titleFont = [UIFont fontWithName:@"AvenirNext-Regular" size:25.0];
    alertVC.titleColor = [UIColor blackColor];
    
    alertVC.message = [NSString stringWithFormat:@"Возраст: %@\n Рейтинг: %@ место", self.ages[self.actressFour], self.ratings[self.actressFour]];
    alertVC.messageFont = [UIFont fontWithName:@"AvenirNext-Regular" size:17.0];
    
    alertVC.cancelButtonColor = [UIColor colorWithRed:253.0 / 255.0 green:152.0 / 255.0 blue:39.0 / 255.0 alpha:1];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    imageView.clipsToBounds = YES;
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    imageView.image = [UIImage imageNamed:self.images[self.actressFour]];
    
    alertVC.alertViewContentView = imageView;
    
    NYAlertAction *okAction = [NYAlertAction actionWithTitle:@"OK"
                                                       style:UIAlertActionStyleCancel
                                                     handler:^(NYAlertAction *action) {
                                                         [self dismissViewControllerAnimated:YES completion:nil];
                                                     }];
    
    NYAlertAction *visitAction = [NYAlertAction actionWithTitle:@"Find on Pornhub" style:UIAlertActionStyleCancel handler:^(NYAlertAction *action) {
        NSString *webAddress = self.links[self.actressFour];
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


- (IBAction)backButtonTapped:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)sliderValueChanged:(UISlider *)sender {
    if (self.segmentedControl.selectedSegmentIndex == 0) {
        self.imgView.image = [UIImage imageNamed:[NSString stringWithFormat:@"boob%d", (int)sender.value]];
        self.first = sender.value;
    } else if (self.segmentedControl.selectedSegmentIndex == 1) {
        self.imgView.image = [UIImage imageNamed:[NSString stringWithFormat:@"eth%d", (int)sender.value]];
        self.second = sender.value;
    } else if (self.segmentedControl.selectedSegmentIndex == 2) {
        self.imgView.image = [UIImage imageNamed:[NSString stringWithFormat:@"loud%d", (int)sender.value]];
        self.third = sender.value;
    } else {
        self.imgView.image = [UIImage imageNamed:[NSString stringWithFormat:@"donut%d", (int)sender.value]];
        self.fourth = sender.value;
    }
    
    NSArray<NSNumber *> *result = [self getTop];
    
    self.actressOne = result[0].integerValue;
    self.actressTwo = result[1].integerValue;
    self.actressThree = result[2].integerValue;
    self.actressFour = result[3].integerValue;
    
    self.imgView1.image = [UIImage imageNamed:self.images[self.actressOne]];
    self.imgView2.image = [UIImage imageNamed:self.images[self.actressTwo]];
    self.imgView3.image = [UIImage imageNamed:self.images[self.actressThree]];
    self.imgView4.image = [UIImage imageNamed:self.images[self.actressFour]];
    
    self.name1.text = self.names[self.actressOne];
    self.name2.text = self.names[self.actressTwo];
    self.name3.text = self.names[self.actressThree];
    self.name4.text = self.names[self.actressFour];
    
    self.surname1.text = self.surnames[self.actressOne];
    self.surname2.text = self.surnames[self.actressTwo];
    self.surname3.text = self.surnames[self.actressThree];
    self.surname4.text = self.surnames[self.actressFour];
}

- (IBAction)segmentedControlDidChangeValue:(UISegmentedControl *)sender {
    if (self.segmentedControl.selectedSegmentIndex == 0) {
        self.slider.maximumValue = 6;
        self.imgView.image = [UIImage imageNamed:[NSString stringWithFormat:@"boob%d", (int)self.first]];
        self.slider.value = self.first;
    } else if (self.segmentedControl.selectedSegmentIndex == 1) {
        self.slider.maximumValue = 4;
        self.imgView.image = [UIImage imageNamed:[NSString stringWithFormat:@"eth%d", (int)self.second]];
        self.slider.value = self.second;
    } else if (self.segmentedControl.selectedSegmentIndex == 2) {
        self.slider.maximumValue = 5;
        self.imgView.image = [UIImage imageNamed:[NSString stringWithFormat:@"loud%d", (int)self.third]];
        self.slider.value = self.third;
    } else {
        self.slider.maximumValue = 4;
        self.imgView.image = [UIImage imageNamed:[NSString stringWithFormat:@"donut%d", (int)self.fourth]];
        self.slider.value = self.fourth;
    }
}

- (void)initDonuts {
    self.donuts = @[@"4",
                    @"1",
                    @"1",
                    @"1",
                    @"1",
                    @"4",
                    @"4",
                    @"1",
                    @"3",
                    @"3",
                    @"1",
                    @"2",
                    @"3",
                    @"1",
                    @"3",
                    @"3",
                    @"2",
                    @"2",
                    @"4",
                    @"3",
                    @"1",
                    @"3",
                    @"1",
                    @"4",
                    @"1",
                    @"2",
                    @"3",
                    @"1",
                    @"2",
                    @"4",
                    @"3",
                    @"1",
                    @"1",
                    @"3",
                    @"1",
                    @"1",
                    @"3",
                    @"1",
                    @"4",
                    @"2",
                    @"4",
                    @"3",
                    @"3",
                    @"3",
                    @"3",
                    @"2",
                    @"3",
                    @"1",
                    @"1",
                    @"1",
                    @"3",
                    @"1",
                    @"3",
                    @"1",
                    @"2",
                    @"4",
                    @"3",
                    @"4",
                    @"1",
                    @"3",
                    @"3",
                    @"2",
                    @"2",
                    @"4",
                    @"4",
                    @"2",
                    @"2",
                    @"1",
                    @"3",
                    @"2",
                    @"1",
                    @"1",
                    @"3",
                    @"2",
                    @"1",
                    @"4",
                    @"4",
                    @"3",
                    @"1",
                    @"1",
                    @"2",
                    @"4",
                    @"2",
                    @"2",
                    @"3",
                    @"3",
                    @"3",
                    @"2",
                    @"1",
                    @"3",
                    @"4",
                    @"1",
                    @"2",
                    @"1",
                    @"4",
                    @"3",
                    @"4",
                    @"3",
                    @"2",
                    @"3",
                    @"3",
                    @"1",
                    @"4",
                    @"2",
                    @"3",
                    @"4",
                    @"1",
                    @"2",
                    @"4",
                    @"1",
                    @"3"];
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
                   @"https://www.pornhub.com/pornstar/kim-kardashian",
                   @"https://www.pornhub.com/pornstar/peta-jensen",
                   @"https://www.pornhub.com/pornstar/piper-perri",
                   @"https://www.pornhub.com/pornstar/lana-rhoades",
                   @"https://www.pornhub.com/pornstar/sara-jay",
                   @"https://www.pornhub.com/pornstar/ava-addams",
                   @"https://www.pornhub.com/pornstar/dani-daniels",
                   @"https://www.pornhub.com/pornstar/elsa-jean",
                   @"https://www.pornhub.com/pornstar/sunny-leone",
                   @"https://www.pornhub.com/pornstar/janice-griffith",
                   @"https://www.pornhub.com/pornstar/leah-gotti",
                   @"https://www.pornhub.com/pornstar/eva-lovia",
                   @"https://www.pornhub.com/pornstar/jordi-el-nino-polla",
                   @"https://www.pornhub.com/pornstar/abella-danger",
                   @"https://www.pornhub.com/pornstar/lena-paul",
                   @"https://www.pornhub.com/pornstar/christy-mack",
                   @"https://www.pornhub.com/pornstar/megan-rain",
                   @"https://www.pornhub.com/pornstar/lela-star",
                   @"https://www.pornhub.com/pornstar/angela-white",
                   @"https://www.pornhub.com/pornstar/diamond-jackson",
                   @"https://www.pornhub.com/pornstar/kelsi-monroe",
                   @"https://www.pornhub.com/pornstar/kendra-sunderland",
                   @"https://www.pornhub.com/pornstar/rachel-starr",
                   @"https://www.pornhub.com/pornstar/tori-black",
                   @"https://www.pornhub.com/pornstar/gianna-michaels",
                   @"https://www.pornhub.com/pornstar/veronica-rodriguez",
                   @"https://www.pornhub.com/pornstar/adriana-chechik",
                   @"https://www.pornhub.com/pornstar/bridgette-b",
                   @"https://www.pornhub.com/pornstar/phoenix-marie",
                   @"https://www.pornhub.com/pornstar/alison-tyler",
                   @"https://www.pornhub.com/pornstar/molly-jane",
                   @"https://www.pornhub.com/pornstar/nicolette-shea",
                   @"https://www.pornhub.com/pornstar/julia-ann",
                   @"https://www.pornhub.com/pornstar/sophie-dee",
                   @"https://www.pornhub.com/pornstar/johnny-sins",
                   @"https://www.pornhub.com/pornstar/alexis-fawx",
                   @"https://www.pornhub.com/pornstar/little-caprice",
                   @"https://www.pornhub.com/pornstar/farrah-abraham",
                   @"https://www.pornhub.com/pornstar/mandy-flores",
                   @"https://www.pornhub.com/pornstar/cory-chase",
                   @"https://www.pornhub.com/pornstar/karlee-grey",
                   @"https://www.pornhub.com/pornstar/mandingo",
                   @"https://www.pornhub.com/pornstar/remy-lacroix",
                   @"https://www.pornhub.com/pornstar/brittney-white",
                   @"https://www.pornhub.com/pornstar/valentina-nappi",
                   @"https://www.pornhub.com/pornstar/jayden-james",
                   @"https://www.pornhub.com/pornstar/moriah-mills",
                   @"https://www.pornhub.com/pornstar/aletta-ocean",
                   @"https://www.pornhub.com/pornstar/eva-notty",
                   @"https://www.pornhub.com/pornstar/sasha-foxxx",
                   @"https://www.pornhub.com/pornstar/layla-london",
                   @"https://www.pornhub.com/pornstar/marsha-may",
                   @"https://www.pornhub.com/pornstar/abella-anderson",
                   @"https://www.pornhub.com/pornstar/rocco-siffredi",
                   @"https://www.pornhub.com/pornstar/james-deen",
                   @"https://www.pornhub.com/pornstar/pinky",
                   @"https://www.pornhub.com/pornstar/katie-cummings",
                   @"https://www.pornhub.com/pornstar/faye-reagan",
                   @"https://www.pornhub.com/pornstar/bryci",
                   @"https://www.pornhub.com/pornstar/lady-fyre",
                   @"https://www.pornhub.com/pornstar/kagney-linn-karter",
                   @"https://www.pornhub.com/pornstar/hitomi-tanaka",
                   @"https://www.pornhub.com/pornstar/jessa-rhodes",
                   @"https://www.pornhub.com/pornstar/lexi-belle",
                   @"https://www.pornhub.com/pornstar/jynx-maze",
                   @"https://www.pornhub.com/pornstar/danny-d",
                   @"https://www.pornhub.com/pornstar/holly-michaels",
                   @"https://www.pornhub.com/pornstar/lucy-cat",
                   @"https://www.pornhub.com/pornstar/cassidy-banks",
                   @"https://www.pornhub.com/pornstar/siri",
                   @"https://www.pornhub.com/pornstar/ashley-alban",
                   @"https://www.pornhub.com/pornstar/priya-rai",
                   @"https://www.pornhub.com/pornstar/audrey-bitoni",
                   @"https://www.pornhub.com/pornstar/naomi-woods",
                   @"https://www.pornhub.com/pornstar/sarah-banks",
                   @"https://www.pornhub.com/pornstar/blair-williams",
                   @"https://www.pornhub.com/pornstar/jodi-west",
                   @"https://www.pornhub.com/pornstar/bonnie-rotten",
                   @"https://www.pornhub.com/pornstar/esperanza-gomez",
                   @"https://www.pornhub.com/pornstar/brooklyn-chase",
                   @"https://www.pornhub.com/pornstar/kendall-woods",
                   @"https://www.pornhub.com/pornstar/ariella-ferrera",
                   @"https://www.pornhub.com/pornstar/nina-hartley",
                   @"https://www.pornhub.com/pornstar/jada-stevens",
                   @"https://www.pornhub.com/pornstar/dakota-skye",
                   @"https://www.pornhub.com/pornstar/ariana-marie",
                   @"https://www.pornhub.com/pornstar/nikki-benz",
                   @"https://www.pornhub.com/pornstar/jenna-jameson",
                   @"https://www.pornhub.com/pornstar/stella-cox",
                   @"https://www.pornhub.com/pornstar/cameron-canela",
                   @"https://www.pornhub.com/pornstar/jenny-blighe",
                   @"https://www.pornhub.com/pornstar/stormy-daniels",
                   @"https://www.pornhub.com/pornstar/anna-bell-peaks",
                   @"https://www.pornhub.com/pornstar/yurizan-beltran",
                   @"https://www.pornhub.com/pornstar/kayden-kross",
                   @"https://www.pornhub.com/pornstar/alix-lynx",
                   @"https://www.pornhub.com/pornstar/romi-rain"];
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
                  @"30-40",
                  @"20-30",
                  @"20-30",
                  @"20-30",
                  @"40-99",
                  @"30-40",
                  @"20-30",
                  @"18-20",
                  @"30-40",
                  @"20-30",
                  @"18-20",
                  @"20-30",
                  @"20-30",
                  @"20-30",
                  @"20-30",
                  @"20-30",
                  @"20-30",
                  @"30-40",
                  @"30-40",
                  @"40-99",
                  @"20-30",
                  @"20-30",
                  @"30-40",
                  @"20-30",
                  @"30-40",
                  @"20-30",
                  @"20-30",
                  @"30-40",
                  @"30-40",
                  @"20-30",
                  @"20-30",
                  @"30-40",
                  @"40-99",
                  @"30-40",
                  @"30-40",
                  @"40-99",
                  @"20-30",
                  @"20-30",
                  @"18-20",
                  @"30-40",
                  @"20-30",
                  @"40-99",
                  @"20-30",
                  @"18-20",
                  @"20-30",
                  @"30-40",
                  @"18-20",
                  @"30-40",
                  @"30-40",
                  @"20-30",
                  @"18-20",
                  @"20-30",
                  @"20-30",
                  @"40-99",
                  @"30-40",
                  @"30-40",
                  @"30-40",
                  @"20-30",
                  @"30-40",
                  @"30-40",
                  @"30-40",
                  @"30-40",
                  @"20-30",
                  @"30-40",
                  @"20-30",
                  @"30-40",
                  @"20-30",
                  @"20-30",
                  @"20-30",
                  @"20-30",
                  @"20-30",
                  @"40-99",
                  @"30-40",
                  @"20-30",
                  @"20-30",
                  @"20-30",
                  @"40-99",
                  @"20-30",
                  @"30-40",
                  @"30-40",
                  @"18-20",
                  @"30-40",
                  @"40-99",
                  @"20-30",
                  @"20-30",
                  @"20-30",
                  @"30-40",
                  @"40-99",
                  @"18-20",
                  @"18-20",
                  @"18-20",
                  @"30-40",
                  @"30-40",
                  @"30-40",
                  @"30-40",
                  @"18-20"];
}

- (void)initGroans {
    self.groans = @[@"4",
                    @"2",
                    @"3",
                    @"4",
                    @"2",
                    @"5",
                    @"5",
                    @"5",
                    @"4",
                    @"3",
                    @"4",
                    @"4",
                    @"4",
                    @"5",
                    @"2",
                    @"3",
                    @"3",
                    @"3",
                    @"4",
                    @"3",
                    @"3",
                    @"5",
                    @"5",
                    @"4",
                    @"4",
                    @"3",
                    @"3",
                    @"4",
                    @"0",
                    @"0",
                    @"2",
                    @"3",
                    @"5",
                    @"2",
                    @"4",
                    @"3",
                    @"4",
                    @"4",
                    @"4",
                    @"3",
                    @"3",
                    @"3",
                    @"4",
                    @"2",
                    @"2",
                    @"3",
                    @"3",
                    @"3",
                    @"4",
                    @"4",
                    @"4",
                    @"2",
                    @"3",
                    @"3",
                    @"3",
                    @"3",
                    @"3",
                    @"4",
                    @"0",
                    @"4",
                    @"2",
                    @"3",
                    @"3",
                    @"3",
                    @"3",
                    @"3",
                    @"3",
                    @"4",
                    @"5",
                    @"5",
                    @"5",
                    @"3",
                    @"3",
                    @"3",
                    @"3",
                    @"2",
                    @"4",
                    @"4",
                    @"3",
                    @"3",
                    @"3",
                    @"4",
                    @"4",
                    @"2",
                    @"2",
                    @"5",
                    @"4",
                    @"3",
                    @"4",
                    @"4",
                    @"4",
                    @"3",
                    @"3",
                    @"3",
                    @"4",
                    @"4",
                    @"4",
                    @"5",
                    @"5",
                    @"4",
                    @"3",
                    @"3",
                    @"3",
                    @"3",
                    @"4",
                    @"4",
                    @"2",
                    @"3",
                    @"3",
                    @"4",
                    @"4"];
}

- (void)initNames {
    self.names = @[@"Riley",
                   @"Mia",
                   @"August",
                   @"Lisa",
                   @"Brandi",
                   @"Dillion",
                   @"Nicole",
                   @"Madison",
                   @"Alexis",
                   @"Mia",
                   @"Kimmy",
                   @"Asa",
                   @"Kendra",
                   @"Sasha",
                   @"Kim",
                   @"Peta",
                   @"Piper",
                   @"Lana",
                   @"Sara",
                   @"Ava",
                   @"Dani",
                   @"Elsa",
                   @"Sunny",
                   @"Janice",
                   @"Leah",
                   @"Eva",
                   @"Jordi",
                   @"Abella",
                   @"Lena",
                   @"Christy",
                   @"Megan",
                   @"Lela",
                   @"Angela",
                   @"Diamond",
                   @"Kelsi",
                   @"Kendra",
                   @"Rachel",
                   @"Tori",
                   @"Gianna",
                   @"Veronica",
                   @"Adriana",
                   @"Bridgette",
                   @"Phoenix",
                   @"Alison",
                   @"Molly",
                   @"Nicolette",
                   @"Julia",
                   @"Sophie",
                   @"Johnny",
                   @"Alexis",
                   @"Little",
                   @"Farrah",
                   @"Mandy",
                   @"Cory",
                   @"Karlee",
                   @"Mandigo",
                   @"Remy",
                   @"Brittney",
                   @"Valentina",
                   @"Jayden",
                   @"Moriah",
                   @"Aletta",
                   @"Eva",
                   @"Sasha",
                   @"Layla",
                   @"Marsha",
                   @"Abella",
                   @"Rocco",
                   @"James",
                   @"Pinkey",
                   @"Katie",
                   @"Faye",
                   @"Bryci",
                   @"Lady",
                   @"Kagney",
                   @"Hitomi",
                   @"Jessa",
                   @"Lexi",
                   @"Jynx",
                   @"Danny",
                   @"Holly",
                   @"Lucy",
                   @"Cassidy",
                   @"Siri",
                   @"Ashley",
                   @"Priya",
                   @"Audrey",
                   @"Naomi",
                   @"Sarah",
                   @"Blair",
                   @"Jodi",
                   @"Bonnie",
                   @"Esperanza",
                   @"Brooklyn",
                   @"Kendall",
                   @"Ariella",
                   @"Nina",
                   @"Jada",
                   @"Dakota",
                   @"Ariana",
                   @"Nikki",
                   @"Jenna",
                   @"Stella",
                   @"Cameron",
                   @"Jenny",
                   @"Stormy",
                   @"Anna",
                   @"Yurizan",
                   @"Kayden",
                   @"Alix",
                   @"Romi"];
}

- (void)initSurnames {
    self.surnames = @[@"Reid",
                      @"Khalifa",
                      @"Ames",
                      @"Ann",
                      @"Love",
                      @"Harper",
                      @"Aniston",
                      @"Ivy",
                      @"Texas",
                      @"Malkova",
                      @"Granger",
                      @"Akira",
                      @"Lust",
                      @"Grey",
                      @"Kardashian",
                      @"Jensen",
                      @"Perri",
                      @"Rhoades",
                      @"Jay",
                      @"Addams",
                      @"Daniels",
                      @"Jean",
                      @"Leone",
                      @"Griffith",
                      @"Gotti",
                      @"Lovia",
                      @"El",
                      @"Danger",
                      @"Paul",
                      @"Mack",
                      @"Rain",
                      @"Star",
                      @"White",
                      @"Jackson",
                      @"Monroe",
                      @"Sunderland",
                      @"Starr",
                      @"Black",
                      @"Michaels",
                      @"Rodriguez",
                      @"Chechik",
                      @"B",
                      @"Marie",
                      @"Tyler",
                      @"Jane",
                      @"Shea",
                      @"Ann",
                      @"Dee",
                      @"Sins",
                      @"Fawx",
                      @"Caprice",
                      @"Abraham",
                      @"Flores",
                      @"Chase",
                      @"Grey",
                      @"Black",
                      @"Lacroix",
                      @"White",
                      @"Nappi",
                      @"James",
                      @"Mills",
                      @"Ocean",
                      @"Notty",
                      @"Foxxx",
                      @"London",
                      @"May",
                      @"Anderson",
                      @"Siffredi",
                      @"Deen",
                      @"Huy",
                      @"Cummings",
                      @"Reagan",
                      @"Chlen",
                      @"Fyre",
                      @"Linn",
                      @"Tanaka",
                      @"Rhodes",
                      @"Belle",
                      @"Maze",
                      @"D",
                      @"Michaels",
                      @"Cat",
                      @"Banks",
                      @"Plosh",
                      @"Alban",
                      @"Rai",
                      @"Bitoni",
                      @"Woods",
                      @"Banks",
                      @"Williams",
                      @"West",
                      @"Rotten",
                      @"Gomez",
                      @"Chase",
                      @"Woods",
                      @"Ferrera",
                      @"Hartley",
                      @"Stevens",
                      @"Skye",
                      @"Marie",
                      @"Benz",
                      @"Jameson",
                      @"Cox",
                      @"Canela",
                      @"Blighe",
                      @"Daniels",
                      @"Bell",
                      @"Beltran",
                      @"Kross",
                      @"Lynx",
                      @"Rain"];
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
                     @"15",
                     @"16",
                     @"17",
                     @"18",
                     @"19",
                     @"20",
                     @"21",
                     @"22",
                     @"23",
                     @"24",
                     @"25",
                     @"26",
                     @"27",
                     @"28",
                     @"29",
                     @"30",
                     @"31",
                     @"32",
                     @"33",
                     @"34",
                     @"35",
                     @"36",
                     @"37",
                     @"38",
                     @"39",
                     @"40",
                     @"41",
                     @"42",
                     @"43",
                     @"44",
                     @"45",
                     @"46",
                     @"47",
                     @"48",
                     @"49",
                     @"50",
                     @"51",
                     @"52",
                     @"53",
                     @"54",
                     @"55",
                     @"56",
                     @"57",
                     @"58",
                     @"59",
                     @"60",
                     @"61",
                     @"62",
                     @"63",
                     @"64",
                     @"65",
                     @"66",
                     @"67",
                     @"68",
                     @"69",
                     @"70",
                     @"71",
                     @"72",
                     @"73",
                     @"74",
                     @"75",
                     @"76",
                     @"77",
                     @"78",
                     @"79",
                     @"80",
                     @"81",
                     @"82",
                     @"83",
                     @"84",
                     @"85",
                     @"86",
                     @"87",
                     @"88",
                     @"89",
                     @"90",
                     @"91",
                     @"92",
                     @"93",
                     @"94",
                     @"95",
                     @"96",
                     @"97",
                     @"98",
                     @"99",
                     @"100",
                     @"101",
                     @"102",
                     @"103",
                     @"104",
                     @"105",
                     @"106",
                     @"107",
                     @"108",
                     @"109",
                     @"110",
                     @"111"];
}

- (void)initBoobs {
    self.boobs = @[@"1",
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
                   @"4",
                   @"4",
                   @"1",
                   @"4",
                   @"5",
                   @"4",
                   @"4",
                   @"1",
                   @"3",
                   @"4",
                   @"3",
                   @"4",
                   @"4",
                   @"3",
                   @"4",
                   @"4",
                   @"2",
                   @"4",
                   @"4",
                   @"4",
                   @"2",
                   @"2",
                   @"4",
                   @"2",
                   @"4",
                   @"2",
                   @"2",
                   @"4",
                   @"4",
                   @"4",
                   @"4",
                   @"4",
                   @"4",
                   @"4",
                   @"4",
                   @"4",
                   @"2",
                   @"3",
                   @"4",
                   @"3",
                   @"4",
                   @"4",
                   @"2",
                   @"2",
                   @"2",
                   @"4",
                   @"4",
                   @"4",
                   @"4",
                   @"1",
                   @"4",
                   @"4",
                   @"4",
                   @"4",
                   @"1",
                   @"2",
                   @"3",
                   @"2",
                   @"2",
                   @"4",
                   @"4",
                   @"6",
                   @"2",
                   @"3",
                   @"2",
                   @"2",
                   @"4",
                   @"2",
                   @"4",
                   @"4",
                   @"4",
                   @"4",
                   @"4",
                   @"2",
                   @"1",
                   @"4",
                   @"4",
                   @"4",
                   @"4",
                   @"4",
                   @"4",
                   @"4",
                   @"4",
                   @"3",
                   @"1",
                   @"1",
                   @"4",
                   @"4",
                   @"4",
                   @"3",
                   @"3",
                   @"4",
                   @"4",
                   @"4",
                   @"4",
                   @"3",
                   @"3"];
}

- (void)initEths {
    self.eths = @[@"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"2",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"4",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"3",
                  @"1",
                  @"3",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"4",
                  @"1",
                  @"4",
                  @"1",
                  @"1",
                  @"4",
                  @"1",
                  @"3",
                  @"1",
                  @"1",
                  @"1",
                  @"3",
                  @"1",
                  @"1",
                  @"4",
                  @"3",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"2",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"4",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"4",
                  @"1",
                  @"1",
                  @"1",
                  @"3",
                  @"1",
                  @"4",
                  @"3",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"3",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1",
                  @"1"];
}

- (void)initImages {
    self.images = @[@"1.png",
                    @"2.png",
                    @"3.png",
                    @"4.png",
                    @"5.png",
                    @"6.png",
                    @"7.png",
                    @"8.png",
                    @"9.png",
                    @"10.png",
                    @"11.png",
                    @"12.png",
                    @"13.png",
                    @"14.png",
                    @"15.png",
                    @"16.png",
                    @"17.png",
                    @"18.png",
                    @"19.png",
                    @"20.png",
                    @"21.png",
                    @"22.png",
                    @"23.png",
                    @"24.png",
                    @"25.png",
                    @"26.png",
                    @"27.png",
                    @"28.png",
                    @"29.png",
                    @"30.png",
                    @"31.png",
                    @"32.png",
                    @"33.png",
                    @"34.png",
                    @"35.png",
                    @"36.png",
                    @"37.png",
                    @"38.png",
                    @"39.png",
                    @"40.png",
                    @"41.png",
                    @"42.png",
                    @"43.png",
                    @"44.png",
                    @"45.png",
                    @"46.png",
                    @"47.png",
                    @"48.png",
                    @"49.png",
                    @"50.png",
                    @"51.png",
                    @"52.png",
                    @"53.png",
                    @"54.png",
                    @"55.png",
                    @"56.png",
                    @"57.png",
                    @"58.png",
                    @"59.png",
                    @"60.png",
                    @"61.png",
                    @"62.png",
                    @"63.png",
                    @"64.png",
                    @"65.png",
                    @"66.png",
                    @"67.png",
                    @"68.png",
                    @"69.png",
                    @"70.png",
                    @"71.png",
                    @"72.png",
                    @"73.png",
                    @"74.png",
                    @"75.png",
                    @"76.png",
                    @"77.png",
                    @"78.png",
                    @"79.png",
                    @"80.png",
                    @"81.png",
                    @"82.png",
                    @"83.png",
                    @"84.png",
                    @"85.png",
                    @"86.png",
                    @"87.png",
                    @"88.png",
                    @"89.png",
                    @"90.png",
                    @"91.png",
                    @"92.png",
                    @"93.png",
                    @"94.png",
                    @"95.png",
                    @"96.png",
                    @"97.png",
                    @"98.png",
                    @"99.png",
                    @"100.png",
                    @"101.png",
                    @"102.png",
                    @"103.png",
                    @"104.png",
                    @"105.png",
                    @"106.png",
                    @"107.png",
                    @"108.png",
                    @"109.png",
                    @"110.png",
                    @"111.png"];
}

- (NSUInteger)sqr:(NSUInteger)x {
    return x * x;
}

- (NSArray<NSNumber *> *)getTop {
    NSMutableArray<SortTask *> *tasks = [NSMutableArray array];
    
    for (int i = 0; i < 111; ++i) {
        NSUInteger dist = [self sqr:(self.boobs[i].integerValue - self.first)] +
                            [self sqr:(self.eths[i].integerValue - self.second)] +
                            [self sqr:(self.groans[i].integerValue - self.third)] +
                            [self sqr:(self.donuts[i].integerValue - self.fourth)];
        
        [tasks addObject:[[SortTask alloc] initWithValue:[NSNumber numberWithInteger:dist] andPos:i]];
    }
    
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"value"
                                                 ascending:YES];
    NSArray<SortTask *> *sortedArray = [tasks sortedArrayUsingDescriptors:@[sortDescriptor]];
    
    return [[NSArray alloc] initWithObjects:[NSNumber numberWithInteger:sortedArray[0].pos], [NSNumber numberWithInteger:sortedArray[1].pos], [NSNumber numberWithInteger:sortedArray[2].pos], [NSNumber numberWithInteger:sortedArray[3].pos], nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initDonuts];
    [self initAges];
    [self initEths];
    [self initBoobs];
    [self initGroans];
    [self initLinks];
    [self initImages];
    [self initRatings];
    [self initNames];
    [self initSurnames];
    
    self.imgView.image = [UIImage imageNamed:@"boob2"];
    
    [self.slider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    
    [self.segmentedControl addTarget:self action:@selector(segmentedControlDidChangeValue:) forControlEvents:UIControlEventValueChanged];
    
    self.first = 2;
    self.second = 2;
    self.third = 2;
    self.fourth = 2;
    
    NSLog(@"%lu %lu %lu %lu", (unsigned long)self.boobs.count, self.eths.count, self.groans.count, self.ratings.count);
    
    NSArray<NSNumber *> *result = [self getTop];
    
    self.actressOne = result[0].integerValue;
    self.actressTwo = result[1].integerValue;
    self.actressThree = result[2].integerValue;
    self.actressFour = result[3].integerValue;
    
    self.imgView1.image = [UIImage imageNamed:self.images[self.actressOne]];
    self.imgView2.image = [UIImage imageNamed:self.images[self.actressTwo]];
    self.imgView3.image = [UIImage imageNamed:self.images[self.actressThree]];
    self.imgView4.image = [UIImage imageNamed:self.images[self.actressFour]];
    
    self.name1.text = self.names[self.actressOne];
    self.name2.text = self.names[self.actressTwo];
    self.name3.text = self.names[self.actressThree];
    self.name4.text = self.names[self.actressFour];
    
    self.surname1.text = self.surnames[self.actressOne];
    self.surname2.text = self.surnames[self.actressTwo];
    self.surname3.text = self.surnames[self.actressThree];
    self.surname4.text = self.surnames[self.actressFour];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
