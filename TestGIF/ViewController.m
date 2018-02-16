//
//  ViewController.m
//  TestGIF
//
//  Created by Rajesh's MacBook Pro  on 16/2/18.
//  Copyright © 2018 MacBook Pro Retina. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+animatedGIF.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadGIF];
}
-(void) loadGIF{
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"TestSample1" withExtension:@"gif"];
    self.mImageView1.image = [UIImage animatedImageWithAnimatedGIFData:[NSData dataWithContentsOfURL:url]];
    
    url = [[NSBundle mainBundle] URLForResource:@"TestSample2" withExtension:@"gif"];
    self.mImageView2.image = [UIImage animatedImageWithAnimatedGIFURL:url];
    
    url = [[NSBundle mainBundle] URLForResource:@"TestSample3" withExtension:@"gif"];
    self.mImageView3.image = [UIImage animatedImageWithAnimatedGIFURL:url];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
