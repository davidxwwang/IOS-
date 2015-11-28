//
//  HouseParameterTableViewController.h
//  FTB
//
//  Created by 邵小东 on 15/2/4.
//  Copyright (c) 2015年 Ugood Technology, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DecorationCase.h"
#import "GeneralManager.h"

@interface HouseParameterTableViewController : UITableViewController

@property(nonatomic,strong) DecorationCase *decorationCase;

@property (weak, nonatomic) IBOutlet UILabel *premisesNameLbl;
@property (weak, nonatomic) IBOutlet UILabel *houseStyleLbl;
@property (weak, nonatomic) IBOutlet UILabel *styleNameLbl;
@property (weak, nonatomic) IBOutlet UILabel *budgetCostLbl;
@property (weak, nonatomic) IBOutlet UILabel *areaLbl;
@property (weak, nonatomic) IBOutlet UILabel *designerLbl;
@property (weak, nonatomic) IBOutlet UILabel *periodLbl;
@property (weak, nonatomic) IBOutlet UILabel *companyLbl;
@property (weak, nonatomic) IBOutlet UIView *line1;
@property (weak, nonatomic) IBOutlet UIView *line2;
@property (weak, nonatomic) IBOutlet UIView *line3;
@property (weak, nonatomic) IBOutlet UIView *line4;

@end
