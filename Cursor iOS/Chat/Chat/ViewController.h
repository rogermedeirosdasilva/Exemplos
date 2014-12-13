//
//  ViewController.h
//  Chat
//
//  Created by Aluno on 13/12/14.
//  Copyright (c) 2014 Target Trust. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic) NSMutableArray *dados;
@property (nonatomic) UITableView *tableview;
@property (nonatomic) UITextField *msgTextField;

- (void)buttonClicked: (id)sender;

@end

