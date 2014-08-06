//
//  UKCustomActionSheet.m
//  UKCustomActionSheetDemo
//
//  Created by iMac1 on 06/08/14.
//  Copyright (c) 2014. All rights reserved.
//

#import "UKCustomActionSheet.h"

@implementation UKCustomActionSheet

@synthesize actionSheet;

-(id)initWithTitle:(NSString *)title delegate:(id)delegate cancelButtonTitle:(NSString *)cancelButtonTitle destructiveButtonTitle:(NSString *)destructiveButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ...  {
    
    self = [super init];
    if (self) {
        actionSheet = [[UIActionSheet alloc] initWithTitle:title
                                                   delegate:self
                                          cancelButtonTitle:nil
                                     destructiveButtonTitle:destructiveButtonTitle
                                          otherButtonTitles:nil];
        
        va_list arguments;
        va_start(arguments, otherButtonTitles);
        NSString *currentButtonTitle = otherButtonTitles;
        while (currentButtonTitle != nil) {
            [actionSheet addButtonWithTitle:currentButtonTitle];
            currentButtonTitle = va_arg(arguments, NSString *);
        }
        va_end(arguments);
        
        [actionSheet addButtonWithTitle:cancelButtonTitle];
        [actionSheet setCancelButtonIndex:actionSheet.numberOfButtons - 1];
        
    }
    
    return self;
}

-(void)showInView:(UIView *)view withCompletionHandler:(void (^)(NSString *, int))handler{
    _completionHandler = handler;
    
    [actionSheet showInView:view];
}

-(void)actionSheet:(UIActionSheet *)actionSheets clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSString *buttonTitle = [actionSheets buttonTitleAtIndex:buttonIndex];
    
    _completionHandler(buttonTitle, buttonIndex);
}

@end
