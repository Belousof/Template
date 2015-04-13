//
//  MainViewController.m
//  SM
//
//  Created by Andrey Belousov on 13.04.15.
//  Copyright (c) 2015 Andrey Belousov. All rights reserved.
//

#import "MainViewController.h"

@implementation MainViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *bg = [[UIImageView alloc] init];
    bg.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    UIImage *bgImg = [UIImage imageNamed:@"bg"];
    bg.image = bgImg;
    [self.view addSubview:bg];
}
@end
