//
//  ViewController.m
//  first
//
//  Created by 李李贤军 on 15/8/5.
//  Copyright (c) 2015年 XH. All rights reserved.
//

#import "ViewController.h"
#import "secondViewController.h"
@interface ViewController ()
@property(nonatomic,strong)UILabel * lable;
@property(nonatomic,strong)secondViewController * second;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.lable = [[UILabel alloc] initWithFrame:CGRectMake(100, 200, 200, 200)];
    self.lable.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:self.lable];
    self.second = [[secondViewController alloc] init];
    __weak typeof(self)weaSelf = self;

    self.second.MyBlock = ^(NSString * str)
    
    
    {
        weaSelf.lable.text = str;
        
    };
    

    
    UIButton * button =[[UIButton alloc] initWithFrame:CGRectMake(110,110, 100, 100)];
    button.backgroundColor = [UIColor redColor];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(bbuton) forControlEvents:UIControlEventTouchUpInside];
    

    
   
       // Do any additional setup after loading the view, typically from a nib.
}


-(void)bbuton
{
    
    
    NSMutableDictionary * info = [NSMutableDictionary dictionary ];
    [info setValue:@"李贤均" forKey:@"lixianjun"];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"my" object:self userInfo:info];

        [self presentViewController:self.second animated:YES completion:nil];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
