//
//  RegistrationThreeViewController.m
//  SM
//
//  Created by Andrey Belousov on 13.04.15.
//  Copyright (c) 2015 Andrey Belousov. All rights reserved.
//

#import "RegistrationThreeViewController.h"

@implementation RegistrationThreeViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *wrapper = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    // Размер экрана:
    CGFloat width = wrapper.frame.size.width;
    CGFloat height = wrapper.frame.size.height;
    //---------------
    wrapper.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:wrapper];
    //вычисляем высоту логотипа
    CGFloat heightLogo = width*100/720*192/100;
    // View Top. Окрашивает в Зеленый верхнюю полоску экрана
    {
        UIView *top = [[UIView alloc] initWithFrame:CGRectMake(0, 0, width, 30)];
        top.backgroundColor = [UIColor colorWithRed:95/255.0f green:187/255.0f blue:146/255.0f alpha:1];
        [wrapper addSubview:top];
    }
    // ImageView logo. Логотип
    {
        UIImageView *logo = [[UIImageView alloc] initWithFrame:CGRectMake(0, 50, width, heightLogo)];
        logo.backgroundColor = [UIColor whiteColor];
        UIImage *logoImg = [UIImage imageNamed:@"logo_up"];
        logo.image = logoImg;
        [wrapper addSubview:logo];
    }
    {
        UIView *main = [[UIView alloc]initWithFrame:CGRectMake(40, heightLogo+50+30, width-80, height-(heightLogo+50+31))];
        //main.backgroundColor = [UIColor lightGrayColor];
        [wrapper addSubview:main];
        {
            
        }
    }
}
@end
