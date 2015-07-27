//
//  ViewController.m
//  ios-caa-ecSearch
//
//  Created by Carter Chang on 7/27/15.
//  Copyright (c) 2015 Carter Chang. All rights reserved.
//

#import "ViewController.h"
#import "MomoSearch.h"
#import "PcHomeSearch.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString* queryKeyword = @"iphone 6";
    
    //Momo
    ECSearch *momoSearch = [[MomoSearch alloc] init];
    [momoSearch searchWithKeywordAsync:queryKeyword completion:^(NSMutableArray *result, NSError *error) {
        if (error == nil) {
            NSMutableArray *array = result;
            NSLog(@"==========array==%@===============",array);
        }
    }];
    
    //PCHome
    ECSearch *pcHomeSearch = [[PcHomeSearch alloc] init];
    [pcHomeSearch searchWithKeywordAsync:queryKeyword completion:^(NSMutableArray *result, NSError *error) {
        if (error == nil) {
            NSMutableArray *array = result;
            NSLog(@"==========array==%@===============",array);
        }
    }];

    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; 
}

@end
