UKCustomActionSheet
===================

UKCustomActionSheet

Usage:

In Header File

#import "UKCustomActionSheet.h"

@property (nonatomic, strong) UKCustomActionSheet *customActionSheet;

In Implementation file:

Add anywhere

  _customActionSheet = [[UKCustomActionSheet alloc] initWithTitle:@"AppCoda"
                                                         delegate:nil
                                                cancelButtonTitle:@"Cancel"
                                           destructiveButtonTitle:nil
                                                otherButtonTitles:@"Option 1", @"Option 2", @"Option 3",@"Option 4", @"Option 5", @"Option 6", nil];
    
    [_customActionSheet showInView:self.view withCompletionHandler:^(NSString *buttonTitle, NSInteger buttonIndex) {
        NSLog(@"You tapped the button in index: %d", buttonIndex);
        NSLog(@"Your selection is: %@", buttonTitle);
    }];
