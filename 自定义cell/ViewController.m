//
//  ViewController.m
//  自定义cell
//
//  Created by 翟旭博 on 2022/7/16.
//

#import "ViewController.h"
#import "MYTableViewCell.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableView = [[UITableView alloc] initWithFrame: self.view.frame style:UITableViewStyleGrouped];
    self.tableView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview: self.tableView];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    //注册

    [self.tableView registerClass: [MYTableViewCell class] forCellReuseIdentifier: @"FirstTableViewCell"];
    

}

//设置数据视图的组数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

//获取每组单元格的个数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 6;
}




//获取单元格高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}

//创建单元格对象函数
- (UITableViewCell * )tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MYTableViewCell * FirstTableViewCell = [self.tableView dequeueReusableCellWithIdentifier:@"FirstTableViewCell" forIndexPath: indexPath];
    
    FirstTableViewCell.imageview.image = [UIImage imageNamed: @"10.jpg"];
    FirstTableViewCell.label.text = @"zxb";

    return FirstTableViewCell;

}



@end
