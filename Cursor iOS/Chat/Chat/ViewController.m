//
//  ViewController.m
//  Chat
//
//  Created by Aluno on 13/12/14.
//  Copyright (c) 2014 Target Trust. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _dados = [[NSMutableArray alloc] init];

    // View Mensagens
    UIView *viewMsg = [[UIView alloc] initWithFrame:CGRectMake(
                0,
                20,
                [UIScreen mainScreen].applicationFrame.size.width,
                [UIScreen mainScreen].applicationFrame.size.height - 70
    )];
    
    [viewMsg setAutoresizingMask:UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth];
    [viewMsg setBackgroundColor:[UIColor grayColor]];
    [self.view  addSubview:viewMsg];
    
    _tableview = [[UITableView alloc] initWithFrame: viewMsg.frame];
    _tableview.delegate = self;
    _tableview.dataSource = self;
    
    [self.view addSubview:_tableview];
    
    UIView *viewControls = [[UIView alloc] initWithFrame:CGRectMake(
                0,
                viewMsg.frame.size.height + 10,
                [UIScreen mainScreen].applicationFrame.size.width,
                50
    )];
    
    [viewControls setAutoresizingMask:UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth];
    [viewControls setBackgroundColor:[UIColor blueColor]];
    [self.view  addSubview:viewControls];
    
    CGRect textFrame = CGRectMake(10, 10.0f, viewMsg.frame.size.width - 100, 31.0f);
    _msgTextField = [[UITextField alloc] initWithFrame:textFrame];
    _msgTextField.placeholder = @"Mensagem";
    _msgTextField.borderStyle = UITextBorderStyleRoundedRect;
    [viewControls addSubview: _msgTextField];
    
    CGRect btnFrame = CGRectMake(viewMsg.frame.size.width  - 100, 10.0f, 100, 31.0f);
    UIButton *btnEnviar = [[UIButton alloc] initWithFrame:btnFrame];
    [btnEnviar setTitle: @"Enviar" forState: UIControlStateNormal];
    [viewControls addSubview:btnEnviar];
    [btnEnviar addTarget: self
               action: @selector(buttonClicked:)
     forControlEvents: UIControlEventTouchDown];
    
    [_msgTextField resignFirstResponder];
}

- (void) buttonClicked: (id)sender{
    NSString* textoAtual = _msgTextField.text;
    [_msgTextField setText:@""];
    
    [_dados addObject:textoAtual];
    
    [_tableview reloadData];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    // If You have only one(1) section, return 1, otherwise you must handle sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [_dados count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"cursoItemCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [_dados objectAtIndex:indexPath.row];
  
    cell.layer.cornerRadius = 20;
    cell.layer.borderWidth = 2;
    cell.layer.borderColor = [UIColor blackColor].CGColor;
    
    if (indexPath.row % 2 == 0) {
        cell.backgroundColor = [UIColor colorWithRed:204/255 green:255/255 blue:153/255 alpha:1.0];
        cell.textAlignment = UITextAlignmentLeft;
    } else {
        cell.backgroundColor = [UIColor colorWithRed:204/255 green:229/255 blue:255/255 alpha:1.0];
        cell.textAlignment = UITextAlignmentRight;
    }
    
    return cell;
}

@end
