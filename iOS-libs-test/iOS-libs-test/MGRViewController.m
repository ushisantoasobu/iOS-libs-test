//
//  MGRViewController.m
//  iOS-libs-test
//
//  Created by shunsuke sato on 2014/07/12.
//  Copyright (c) 2014年 shunsuke sato. All rights reserved.
//

#import "MGRViewController.h"
#import <SDWebImage/UIImageView+WebCache.h>

@interface MGRViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *iv;

@end

@implementation MGRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //SDWebImage
    [self.iv setImageWithURL:[NSURL URLWithString:@"http://file.aooni.fukuwarai.net/Spiritualized.jpg"]
            placeholderImage:[UIImage imageNamed:@"placeholder.jpg"] //画像読み込みまでに表示させておくもの
                   completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType) {
                       NSLog(@"cachatype:%d", cacheType);
                   }];
    
//    [[SDImageCache sharedImageCache] storeImage:nil
//                                         forKey:@""
//                                         toDisk:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
