//
//  secondViewController.m
//  first
//
//  Created by 李李贤军 on 15/8/5.
//  Copyright (c) 2015年 XH. All rights reserved.
//

#import "secondViewController.h"
#import "ViewController.h"
@interface secondViewController ()
@property(nonatomic,strong)UILabel * lable;

@end

@implementation secondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(bbutons:) name:@"my" object:nil];
       self.view.backgroundColor =[UIColor whiteColor];
    UIButton * button =[[UIButton alloc] initWithFrame:CGRectMake(110,110, 100, 100)];
    button.backgroundColor = [UIColor redColor];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(bbuton) forControlEvents:UIControlEventTouchUpInside];
    UILabel * lable = [[UILabel alloc] initWithFrame:CGRectMake(100, 200, 100, 100)];
    lable.backgroundColor = [UIColor blueColor];
    [self.view addSubview:lable];
    self.lable = lable;
    self.MyBlock(@"啦啦啦啦啦");
    
    
    // Do any additional setup after loading the view.
}
-(void)bbutons:(NSNotification*)notification
{
   
    self.lable.text = notification.userInfo[@"lixianjun"];
    NSLog(@"%@",self.lable.text);
    
}
-(void)bbuton
{
    [self dismissViewControllerAnimated:YES completion:nil];
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
