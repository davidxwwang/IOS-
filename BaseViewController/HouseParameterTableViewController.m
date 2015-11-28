//
//  HouseParameterTableViewController.m
//  FTB
//
//  Created by 邵小东 on 15/2/4.
//  Copyright (c) 2015年 Ugood Technology, LLC. All rights reserved.
//
#import "AppMacro.h"
#import "AppUtils.h"
#import "NetworkingManager.h"
#import "MBProgressHUD+Add.h"
#import "CompanyHomeViewController.h"
#import "LoginViewController.h"
#import "WeichatMainViewController.h"
#import "AppMacro.h"
#import "StringUtils.h"

#import "HouseParameterTableViewController.h"
#import <Masonry.h>

@interface HouseParameterTableViewController ()
@property (weak, nonatomic) IBOutlet UILabel *premisesNameStaticLabel;
@property (weak, nonatomic) IBOutlet UILabel *houseStyleStaticLabel;
@property (weak, nonatomic) IBOutlet UILabel *styleNameStaticLabel;
@property (weak, nonatomic) IBOutlet UILabel *budgetCostStaticLabel;
@property (weak, nonatomic) IBOutlet UILabel *areaStaticLabel;
@property (weak, nonatomic) IBOutlet UILabel *designerStaticLabel;
@property (weak, nonatomic) IBOutlet UILabel *periodStaticLabel;
@property (weak, nonatomic) IBOutlet UILabel *companyStaticLabel;

@end

@implementation HouseParameterTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	NSLog(@"%@", NSStringFromClass(self.class));
	
//    self.tableView.separatorColor=[UIColor whiteColor];
	self.tableView.separatorColor = [UIColor colorWithWhite:1.0 alpha:0.5];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
	
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.premisesNameLbl.text=self.decorationCase.premisesName;
    self.houseStyleLbl.text=[StringUtils trimString:self.decorationCase.houseStyleName limit:6];
    self.styleNameLbl.text=self.decorationCase.styleName;
    self.budgetCostLbl.text=[NSString stringWithFormat:@"%d万",(int)roundf(self.decorationCase.budgetCost/10000)];
    self.areaLbl.text=[NSString stringWithFormat:@"%d平米",(int)roundf(self.decorationCase.area)];
    self.designerLbl.text=self.decorationCase.designerName;
    self.periodLbl.text=[NSString stringWithFormat:@"%ld天",(long)self.decorationCase.period];
    self.companyLbl.text=[StringUtils trimString:self.decorationCase.company.shortName limit:6];
	
	self.premisesNameLbl.font = font_Lanting_Zhong(14.0);
	self.houseStyleLbl.font = font_Lanting_Zhong(14.0);
	self.styleNameLbl.font = font_Lanting_Zhong(15.0);
	self.budgetCostLbl.font = font_Lanting_Zhong(14.0);
	self.areaLbl.font = font_Lanting_Zhong(14.0);
	self.designerLbl.font = font_Lanting_Zhong(14.0);
	self.periodLbl.font = font_Lanting_Zhong(14.0);
	self.companyLbl.font = font_Lanting_Zhong(14.0);
	
//	self.premisesNameLbl.adjustsFontSizeToFitWidth = YES;
//	self.houseStyleLbl.adjustsFontSizeToFitWidth = YES;
//	self.styleNameLbl.adjustsFontSizeToFitWidth = YES;
//	self.budgetCostLbl.adjustsFontSizeToFitWidth = YES;
//	self.areaLbl.adjustsFontSizeToFitWidth = YES;
//	self.designerLbl.adjustsFontSizeToFitWidth = YES;
//	self.periodLbl.adjustsFontSizeToFitWidth = YES;
//	self.companyLbl.adjustsFontSizeToFitWidth = YES;
	
	self.premisesNameStaticLabel.font = font_Lanting_Zhong(14.0);
	self.houseStyleStaticLabel.font = font_Lanting_Zhong(14.0);
	self.styleNameStaticLabel.font = font_Lanting_Zhong(14.0);
	self.budgetCostStaticLabel.font = font_Lanting_Zhong(14.0);
	self.areaStaticLabel.font = font_Lanting_Zhong(14.0);
	self.designerStaticLabel.font = font_Lanting_Zhong(14.0);
	self.periodStaticLabel.font = font_Lanting_Zhong(14.0);
	self.companyStaticLabel.font = font_Lanting_Zhong(14.0);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidLayoutSubviews
{
    if ([self.tableView respondsToSelector:@selector(setSeparatorInset:)]) {
        [self.tableView setSeparatorInset:UIEdgeInsetsZero];
    }
    
    if ([self.tableView respondsToSelector:@selector(setLayoutMargins:)]) {
        [self.tableView setLayoutMargins:UIEdgeInsetsZero];
    }
    NSArray *lines=@[self.line1,self.line2,self.line3,self.line4];
    for (UIView *line in lines) {
        [line mas_updateConstraints:^(MASConstraintMaker *make) {
            make.width.equalTo(@0.5);
        }];
    }
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row==0) {
        return 2;
    }else{
        return 30;
    }
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/
#pragma mark - UITableViewDelegate
-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([cell respondsToSelector:@selector(setSeparatorInset:)]) {
        [cell setSeparatorInset:UIEdgeInsetsZero];
    }
    
    if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
        [cell setLayoutMargins:UIEdgeInsetsZero];
    }
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void)goShop
{
    //todo:
    CompanyHomeViewController *companyVC = [[UIStoryboard storyboardWithName:@"Nearby" bundle:nil] instantiateViewControllerWithIdentifier:@"CompanyHomeView"];
    companyVC.detailCompanyInfo = _decorationCase.company;
    [self.navigationController pushViewController:companyVC animated:YES];
        
}
-(void)collect
{
    NSLog(@"典型案例数据%@",_decorationCase);
    NSLog(@"－－－收藏");
    if (![NetworkingManager reachabilityConnectionNetWork]) {
        MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
        hud.mode = MBProgressHUDModeCustomView;
        hud.labelText = noInternetTip;
        hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:noInternetImage]];
        [hud hide:YES afterDelay:1.0];
        return;
    }
    
    NSDictionary *loginUserInfo =[[NSUserDefaults standardUserDefaults] objectForKey:kLoginUserinfo];
    if(loginUserInfo == nil){
        LoginViewController *viewController = [[UIStoryboard storyboardWithName:@"MyHome" bundle:nil] instantiateViewControllerWithIdentifier:@"login"];
        [self.navigationController pushViewController:viewController animated:NO];
        return;
    }
    
    
    MBProgressHUD *hub = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    hub.labelText = @"请稍候";
    //    NSDictionary * weichatCompanyInfo = [[NSUserDefaults standardUserDefaults] objectForKey:@"selectedWeichatCompany"];
    //    NSString *companyId = [weichatCompanyInfo objectForKey:@"companyId"];
    
    NSDictionary *param=[NSDictionary dictionaryWithObjectsAndKeys:
                         [NSString stringWithFormat:@"%ld",(long)_decorationCase.identifier],@"tagId",
                         [NSString stringWithFormat:@"%ld",(long)101],@"tagCode",nil];
    [NetworkingManager customedPostRequest:param needUserID:NO postRequstAdressSuffix:@"api/favorit" success:^(AFHTTPRequestOperation *operation, id responseObject){
        NSDictionary *resultDict=responseObject;
        NSNumber *status = [resultDict objectForKey:@"status"];
        if([status intValue] == 200){
            BOOL success =[[resultDict objectForKey:@"success"] boolValue];
            if (success) {
                hub.labelText = @"收藏成功";
                hub.mode = MBProgressHUDModeCustomView;
                hub.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:askInternetOKImage]];
                [hub hide:YES afterDelay:1.0];
                // [self.navigationController popViewControllerAnimated:YES];
                
            }
        }
        
    }
                                   failure:^(AFHTTPRequestOperation *operation, NSError *error){
                                       hub.labelText = @"网络异常";
                                       hub.mode = MBProgressHUDModeCustomView;
                                       hub.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:noInternetImage]];
                                       [hub hide:YES afterDelay:1.0];
                                       
                                   }];
    
}


-(void)chat
{
    //todo:
    NSLog(@"典型案例数据%@",self.decorationCase);
    NSLog(@"－－－收藏");
    if (![NetworkingManager reachabilityConnectionNetWork]) {
        MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
        hud.mode = MBProgressHUDModeCustomView;
        hud.labelText = noInternetTip;
        hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:noInternetImage]];
        [hud hide:YES afterDelay:1.0];
        return;
    }
    
    NSDictionary *loginUserInfo =[[NSUserDefaults standardUserDefaults] objectForKey:kLoginUserinfo];
    if(loginUserInfo == nil){
        LoginViewController *viewController = [[UIStoryboard storyboardWithName:@"MyHome" bundle:nil] instantiateViewControllerWithIdentifier:@"login"];
        [self.navigationController pushViewController:viewController animated:NO];
        return;
    }
    
    
    MBProgressHUD *hub = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    hub.labelText = @"请稍候";
    NSDictionary *param=[NSDictionary dictionaryWithObjectsAndKeys:
                         [NSString stringWithFormat:@"%ld",(long)self.decorationCase.company.identifier],@"companyId",nil];
    [NetworkingManager customedPostRequest:param needUserID:NO postRequstAdressSuffix:@"api/friend/company" success:^(AFHTTPRequestOperation *operation, id responseObject){
        NSDictionary *resultDict=responseObject;
        NSNumber *status = [resultDict objectForKey:@"status"];
        if([status intValue] == 200){
            BOOL success =[[resultDict objectForKey:@"success"] boolValue];
            if (success) {
                [MBProgressHUD hideAllHUDsForView:self.view animated:YES];
                
                [[NSUserDefaults standardUserDefaults] setObject:[resultDict objectForKey:@"data"] forKey:@"selectedWeichatCompany"];
                WeichatMainViewController *viewController = [[UIStoryboard storyboardWithName:@"WeiChatStoryboard" bundle:nil] instantiateViewControllerWithIdentifier:@"WeichatMainView"];
                [self.navigationController pushViewController:viewController animated:YES];
                
            }
        }
        
    }
                                   failure:^(AFHTTPRequestOperation *operation, NSError *error){
                                       hub.labelText = @"网络异常";
                                       hub.mode = MBProgressHUDModeCustomView;
                                       hub.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:noInternetImage]];
                                       [hub hide:YES afterDelay:1.0];
                                       
                                   }];
    
    

}
-(void)poinLike
{
    //todo:
    [[GeneralManager sharedInstance]poinLike:@"" successHandler:^(void) {
    } failHandler:^(void){
    } tagCode:(long)101 identifier:(long)_decorationCase.identifier inView:self];

}

@end
