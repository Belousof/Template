//
//  RecoveryPINOneViewController.m
//  SM
//
//  Created by Andrey Belousov on 11.04.15.
//  Copyright (c) 2015 Andrey Belousov. All rights reserved.
//

#import "RecoveryPINOneViewController.h"
@implementation RecoveryPINOneViewController
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
            width = main.frame.size.width;
            height = main.frame.size.height;
            UILabel *lbl = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, width, 30)];
            lbl.text = @"Введите номер телефона";
            //rgb:119-107-95
            //rgb: 67-153-104
            lbl.textColor = [UIColor colorWithRed:67/255.0f green:153/255.0f blue:104/255.0f alpha:1];
            lbl.font = [UIFont fontWithName:@"Trebuchet MS" size:20];
            lbl.textAlignment = NSTextAlignmentCenter;
            [main addSubview:lbl];
            
            UIView *telWrap = [[UIView alloc] initWithFrame:CGRectMake(0, 50, width, 30)];
            //telWrap.backgroundColor = [UIColor whiteColor];
            [main roundMyView:telWrap borderRadius:10.0f borderWidth:1.0f color:[UIColor redColor]];
            
            [main addSubview:telWrap];
            // иконка телефонной трубки
            UIImageView *telIcon = [[UIImageView alloc] initWithFrame:CGRectMake(10, 5, 20, 20)];
            UIImage *imgInTelWrap = [UIImage imageNamed:@"phoneIcon"];
            telIcon.image = imgInTelWrap;
            [telWrap addSubview:telIcon];
            //
            UILabel *plusSeven = [[UILabel alloc]initWithFrame:CGRectMake(45, 5, 20, 20)];
            plusSeven.text = @"+7";
            plusSeven.font = [UIFont fontWithName:@"Trebuchet MS" size:18];
            plusSeven.textColor = [UIColor colorWithRed:119/255.0f green:107/255.0f blue:95/255.0f alpha:1];
            //Trebuchet MS
            [telWrap addSubview: plusSeven];
            UITextField *txtPhone = [[UITextField alloc] initWithFrame:CGRectMake(70, 5, width-80, 20)];
            txtPhone.font = [UIFont fontWithName:@"Trebuchet MS" size:19];
            txtPhone.textColor = [UIColor colorWithRed:119/255.0f green:107/255.0f blue:95/255.0f alpha:1];
            [telWrap addSubview:txtPhone];
            
            //----------------
            UIButton *buttonStart = [UIButton buttonWithType:UIButtonTypeCustom];
            buttonStart.frame = CGRectMake(0, 100, width, 50);
            [buttonStart setTitle:@"Продолжить" forState:UIControlStateNormal];
            [buttonStart setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            [buttonStart setBackgroundColor:[UIColor colorWithRed:237/255.0f green:113/255.0f blue:75/255.0f alpha:1]];
            [buttonStart.titleLabel setFont:[UIFont fontWithName:@"Trebuchet MS" size:16]];
            [main roundMyView:buttonStart borderRadius:10.0f borderWidth:0 color:0];
            [main addSubview:buttonStart];
            [buttonStart addTarget:self
                            action:@selector(tappedStart)
                  forControlEvents:UIControlEventTouchUpInside];
        }
    }
    
}
-(void) tappedStart{
    RecoveryPINTwoViewController *two = [[RecoveryPINTwoViewController alloc] init];
    [self presentViewController:two animated:NO completion:nil];
}
@end
