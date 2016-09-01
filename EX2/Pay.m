//
//  Pay.m
//  EX2
//
//  Created by Lucio on 8/31/16.
//  Copyright © 2016 Lucio. All rights reserved.
//

#import "Pay.h"

@interface Pay ()
@property NSMutableArray *Names;
@property NSMutableArray *Imgs;

@end
extern int x;
@implementation Pay

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.Names   = [[NSMutableArray alloc] initWithObjects: @"TV 18' $1000", @"TV 19' $1100", @"TV 20' $1200", @"TV 21' $1300", @"TV 22' $1400", @"TV 24' $1500", @"TV 32' $2000", @"TV 40' $3000", @"TV 50' $4000", @"TV 72' $5000", nil];
    self.Imgs   = [[NSMutableArray alloc] initWithObjects: @"0.png", @"1.jpg", @"2.jpg", @"3.png", @"4.jpg", @"5.jpg", @"6.jpg", @"7.jpg", @"8.jpg", @"9.jpg", nil];

    self.lbl.text       = self.Names[x];
    self.img.image   = [UIImage imageNamed:self.Imgs[x]];
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
