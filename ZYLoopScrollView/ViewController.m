//
//  ViewController.m
//  ZYLoopScrollView
//
//  Created by yi on 16/2/29.
//  Copyright © 2016年 yi. All rights reserved.
//

#import "ViewController.h"
#import "LoopScrollView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    NSArray *imageArray = @[
                            @"http://img03.liwushuo.com/image/160222/cya7ul0v2.jpg-w720",
                            @"http://img03.liwushuo.com/image/160225/s0zlrxo86.jpg-w720",
                            @"http://img02.liwushuo.com/image/160204/ql9tvfhax.jpg-w720",
                            @"http://img01.liwushuo.com/image/160219/1no7rb071.jpg-w720"];
    
    LoopScrollView *loopScrollView = [[LoopScrollView alloc] initWithFrame:CGRectMake(0, 20, self.view.bounds.size.width, 200)];
    //设置属性
    loopScrollView.pageCount = (int)imageArray.count;
    loopScrollView.autoScroll = YES;
    loopScrollView.showPageControl = YES;
    [loopScrollView setClickAction:^(UIImageView *imageView, int index) {
        
        NSLog(@"点击第%d张图",(int)index);
        
    }];
    //设置网络图片
    //注意: 添加网络图片之前, 需要先设置显示的页数
    for (int i=0; i<imageArray.count; i++) {
        [loopScrollView setImageWithUrlString:imageArray[i] atIndex:i];
    }
    [self.view addSubview:loopScrollView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
