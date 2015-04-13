//
//  AuthorizationViewController.h
//  SM
//
//  Created by Andrey Belousov on 10.04.15.
//  Copyright (c) 2015 Andrey Belousov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIView+BorderRound.h"
#import "RecoveryPINOneViewController.h"
#import "RegistrationOneViewController.h"
@interface AuthorizationViewController : UIViewController

-(void) tappedStart;
-(void) tapperPin;
-(void) tappedReg;

@end
