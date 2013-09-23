//
// OLDetailViewController.m
// OLCategoryHelperDemo
//
// Created by Pay Liu on 13/9/5.
// Copyright (c) 2013年 Octalord Information Inc. All rights reserved.
//

#import "OLDetailViewController.h"

#import <OLCategoryHelper/NSNumber+Random.h>
#import <OLCategoryHelper/NSString+BOOL.h>
#import <OLCategoryHelper/UIColor+RGB.h>
#import <OLCategoryHelper/NSString+Contains.h>
#import <OLCategoryHelper/NSString+Blank.h>

@interface OLDetailViewController ()
- (void) configureView;
@end

@implementation OLDetailViewController

- (void) dealloc
{
    [_detailItem release];
    [_detailDescriptionLabel release];
    [super dealloc];
}

#pragma mark - Managing the detail item

- (void) setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        [_detailItem release];
        _detailItem = [newDetailItem retain];

        // Update the view.
        [self configureView];
    }
}

- (void) configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void) viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void) didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];

    if (self) {
        self.title = NSLocalizedString(@"Detail", @"Detail");
    }

    return self;
}

- (void) viewWillAppear:(BOOL)animated
{

    NSLog(@"random int, %d", [NSNumber randomInt:10]);
    NSLog(@"random int, %@", NSStringFromBOOL([NSNumber randomBool]));

    self.view.backgroundColor = UIColorFromRGB(255.0, 0.0f, 0.0f);
    self.detailDescriptionLabel.backgroundColor = UIColorFromRGBA(0.0f, 255.0f, 0.0f, 0.2f);

    /* NSString+Contains */
    if ([@"abcd" containsString : @"bc"]) {
        NSLog(@"contains");
    } else {
        NSLog(@"no contain");
    }

    /* NSString+Blank */
    NSString *nilString = nil;

    NSLog(@"nilString: '%@'", nilString);

    if ([nilString isBlank] && [nilString isEmpty]) {

        NSLog(@"nil string is blank and empty as well");
    }

    NSString *len_0 = @"";

    NSLog(@"len_0: '%@', length: %d", len_0, len_0.length);

    if ([len_0 isBlank] && [len_0 isEmpty]) {

        NSLog(@"len_0 string is blank and empty as well");
    }

    NSString *spaces = @"    ";

    NSLog(@"spaces: '%@', length: %d", spaces, spaces.length);

    if ([spaces isBlank] && [spaces isNotEmpty]) {

        NSLog(@"spaces string is blank, but NOT empty");
    }
}

@end
