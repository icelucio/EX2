//
//  ViewController.m
//  EX2
//
//  Created by Lucio on 8/30/16.
//  Copyright © 2016 Lucio. All rights reserved.
//

#import "Start.h"

@interface Start ()
@property NSMutableArray *Names;
@property NSMutableArray *Imgs;

@property NSString *stTitleSelected;

@end
int x=0;
@implementation Start
/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.Names   = [[NSMutableArray alloc] initWithObjects: @"TV 18' $1000", @"TV 19' $1100", @"TV 20' $1200", @"TV 21' $1300", @"TV 22' $1400", @"TV 24' $1500", @"TV 32' $2000", @"TV 40' $3000", @"TV 50' $4000", @"TV 72' $5000", nil];
    
    self.Imgs   = [[NSMutableArray alloc] initWithObjects: @"0.png", @"1.jpg", @"2.jpg", @"3.png", @"4.jpg", @"5.jpg", @"6.jpg", @"7.jpg", @"8.jpg", @"9.jpg", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.Names.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 160;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    cellHome *cell = (cellHome *)[tableView dequeueReusableCellWithIdentifier:@"cellHome"];
    
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellHome" bundle:nil] forCellReuseIdentifier:@"cellHome"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellHome"];
    }
    //Fill cell with info from arrays
    cell.lblname.text       = self.Names[indexPath.row];
    cell.img.image   = [UIImage imageNamed:self.Imgs[indexPath.row]];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    self.stTitleSelected        = self.Names[indexPath.row];
    x = indexPath.row;
    [self performSegueWithIdentifier:@"Pay" sender:self];
}
/**********************************************************************************************/
#pragma mark - Navigation
/**********************************************************************************************/
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
  // if ([segue.destinationViewController isKindOfClass:[Pay class]]) {
       // DestinationDetails *destination     = [segue destinationViewController];
        //destination.destinationTitle        = self.stTitleSelected;
        // destination.destinationDescription  = self.stDescriptionSelected;
        // destination.destinationPhoto        = self.stPhotoSelected;
        
    //}
}
@end
