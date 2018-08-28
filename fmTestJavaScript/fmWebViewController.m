//
//  fmWebViewController.m
//  fmTestJavaScript
//
//  Created by 柯浩然 on 8/24/18.
//  Copyright © 2018 柯浩然. All rights reserved.
//

#import "fmWebViewController.h"

@interface fmWebViewController ()<UIWebViewDelegate>
@property(nonatomic, strong) UIWebView *webView;
@end

@implementation fmWebViewController
- (void)showShare:(NSString *)shareString {

    NSLog(@"我是showShare 方法");
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.URLString = @"https://github.com";
    self.webView = [[UIWebView alloc] init];
    self.webView.delegate = self;
    self.webView.frame = self.view.bounds;
    [self.view addSubview:self.webView];
    
    NSString* htmlPath = [[NSBundle mainBundle] pathForResource:@"ExampleApp" ofType:@"html"];
    NSString* appHtml = [NSString stringWithContentsOfFile:htmlPath encoding:NSUTF8StringEncoding error:nil];
    NSURL *baseURL = [NSURL fileURLWithPath:htmlPath];
    [self.webView loadHTMLString:appHtml baseURL:baseURL];
//    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:self.URLString ] cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:60]];
    
    [self registerJavaScript];
}

- (void)registerJavaScript {
    JSContext *contenxt = [self.webView valueForKeyPath:@"documentView.webView.mainFrame.javaScriptContext"];
    contenxt[@"utils"] = self;
    [contenxt setExceptionHandler:^(JSContext *context, JSValue *exception) {
        
    }];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)webViewDidStartLoad:(UIWebView *)webView {
    
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
    NSLog(@"error = %@",error);
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
