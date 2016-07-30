//
//  ViewController.m
//  ifColor
//
//  Created by sp on 16/7/30.
//  Copyright © 2016年 宋平. All rights reserved.
//

#import "ViewController.h"
#import "colorChoicesTool.h"


@interface ViewController ()

/** */
@property (nonatomic,strong)UIImageView *bgImageV;
/** */
@property (nonatomic,strong)UILabel *textLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.bgImageV = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"die"]];
    self.bgImageV.frame = self.view.frame;
    [self.view addSubview:self.bgImageV];
    
    
    self.textLabel = [[UILabel alloc] initWithFrame:CGRectMake(40,40, self.view.frame.size.width - 80, 60)];
    self.textLabel.font = [UIFont systemFontOfSize:25];
    self.textLabel.textAlignment = NSTextAlignmentCenter;
    self.textLabel.text = @"颜色选择器";
    [self.bgImageV addSubview: self.textLabel];
    
    colorChoicesTool *colorTool = [[colorChoicesTool alloc]init];
    
    [colorTool setTextColor:self.bgImageV whith:self.textLabel];
    
}







- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}










@end
