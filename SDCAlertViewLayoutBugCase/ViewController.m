//
//  ViewController.m
//  SDCAlertViewLayoutBugCase
//
//  Created by Victor Babenko on 26.03.15.
//  Copyright (c) 2015 Victor Babenko. All rights reserved.
//

#import "ViewController.h"
#import <SDCAlertViewController.h>
#import "TSAlertControllerVisualStyle.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)testButtonTapped:(id)sender {
    
    SDCAlertController *alert = [SDCAlertController
                                 alertControllerWithTitle:@"Note"
                                 message:@"You can use \"Open PDF In\" in the Action menu below to send your document to the cloud (with the free Dropbox, Evernote, Google Drive, SkyDrive app, etc.), or to send scans to fax or print apps like eFax and HP ePrint.\n\n You can also \"Open JPEG in\" from the individual page screen."
                                 preferredStyle:SDCAlertControllerStyleAlert];
    
    SDCAlertAction* ok = [SDCAlertAction
                          actionWithTitle:@"OK"
                          style:SDCAlertActionStyleDefault
                          handler:^(SDCAlertAction * action)
                          {
                              [alert dismissViewControllerAnimated:YES completion:nil];
                              
                          }];
    SDCAlertAction* cancel = [SDCAlertAction
                              actionWithTitle:@"Cancel"
                              style:SDCAlertActionStyleDefault
                              handler:^(SDCAlertAction * action)
                              {
                                  [alert dismissViewControllerAnimated:YES completion:nil];
                                  
                              }];
    
    [alert addAction:ok];
    [alert addAction:cancel];
    
    alert.visualStyle = [[TSAlertControllerVisualStyle alloc] init];
    
    [self presentViewController:alert animated:YES completion:nil];
    
    
}

@end
