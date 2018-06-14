//
//  ViewController.m
//  QCCrashErrorTest
//
//  Created by EricZhang on 2018/5/24.
//  Copyright © 2018年 BYX. All rights reserved.
//

#import "ViewController.h"
#import "BlocksKit/BlocksKit.h"
#import "BlocksKit/BlocksKit+UIKit.h"
#import "UIView+SDAutoLayout.h"


/*
 步骤介绍
 
 1.在CatchCrash重写了方法，并将结果存储到本地了，你也可以写个接口直接上传的服务器
 
 2.在AppDelegate中注册了一下
 
 3.在本类中让它报错，查看一下结果
 
 
 */

//封个颜色
static inline UIColor *RGBA(int R, int G, int B, double A) {
    return [UIColor colorWithRed: R/255.0 green: G/255.0 blue: B/255.0 alpha: A];
}

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = RGBA(242, 242, 242, 1);
    [self initUI];
    
}

-(void)initUI{
    
    UIButton *testBtn = [UIButton new];
    [self.view addSubview:testBtn];
    testBtn.sd_layout
    .centerXEqualToView(self.view)
    .centerYEqualToView(self.view)
    .widthIs(227)
    .heightIs(40);
    testBtn.sd_cornerRadius = @3;
    [testBtn setTitle:@"测试" forState:0];
    testBtn.backgroundColor = RGBA(32, 169, 242, 1);
    testBtn.titleLabel.font = [UIFont systemFontOfSize:13];
    [testBtn bk_addEventHandler:^(id sender) {
        
        [self performSelector:@selector(thisMthodDoesNotExist) withObject:nil];
        
    } forControlEvents:UIControlEventTouchUpInside];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
