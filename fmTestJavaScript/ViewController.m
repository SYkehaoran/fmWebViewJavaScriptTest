//
//  ViewController.m
//  fmTestJavaScript
//
//  Created by 柯浩然 on 8/24/18.
//  Copyright © 2018 柯浩然. All rights reserved.
//

#import "ViewController.h"
#import <JavaScriptCore/JavaScriptCore.h>
#import "fmWebViewController.h"
@interface ViewController ()

@end

@implementation ViewController
- (void)btnClick {

    fmWebViewController *webVC = [[fmWebViewController alloc] init];
    [self.navigationController pushViewController:webVC animated:YES];    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.view addSubview:btn];
    btn.frame = CGRectMake(100, 100, 100, 100);
    [btn setBackgroundColor:[UIColor redColor]];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
