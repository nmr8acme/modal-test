//
//  ViewController.m
//  model-viewcontroller-presentation-test
//
//  Created by nathan ramsey on 12/12/14.
//  Copyright (c) 2014 acme. All rights reserved.
//


#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *b = [[UIButton alloc] initWithFrame:CGRectMake(40, 40, 100, 28)];
    b.layer.cornerRadius = 2;
    b.layer.borderWidth = 1;
    b.layer.borderColor = [UIColor blueColor].CGColor;
    [b setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [b setTitle:@"present" forState:UIControlStateNormal];
    [b addTarget:self action:@selector(b) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:b];

    UITextView *tv = [[UITextView alloc] initWithFrame:CGRectMake(40, 80, 300, 200) textContainer:nil];
    tv.editable = YES;
    tv.text = @"ksadlfjalskdfjsaldkjf ksadlfjalskdfjsaldkjf ksadlfjalskdfjsaldkjf";
    tv.layer.cornerRadius = 2;
    tv.layer.borderWidth = 1;
    tv.layer.borderColor = [UIColor brownColor].CGColor;
    [self.view addSubview:tv];
}

- (void)b {
    self.modalPresentationStyle = UIModalPresentationFormSheet;
    UIViewController *vc = [[ViewController alloc] init];
    vc.modalPresentationStyle = UIModalPresentationFormSheet;
    [self presentViewController:vc animated:true completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end