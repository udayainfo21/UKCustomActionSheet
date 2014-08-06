//
//  UKCustomActionSheet.h
//  UKCustomActionSheetDemo
//
//  Created by iMac1 on 06/08/14.
//  Copyright (c) 2014. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UKCustomActionSheet : NSObject<UIActionSheetDelegate>


-(id)initWithTitle:(NSString *)title delegate:(id)delegate cancelButtonTitle:(NSString *)cancelButtonTitle destructiveButtonTitle:(NSString *)destructiveButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ...;

-(void)showInView:(UIView *)view withCompletionHandler:(void(^)(NSString *buttonTitle, NSInteger buttonIndex))handler;

@property (nonatomic, strong) UIActionSheet *actionSheet;
@property (nonatomic, strong) void(^completionHandler)(NSString *, NSInteger);

@end
