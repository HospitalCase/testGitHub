//
//  MYTableViewController.m
//  Heloword
//
//  Created by dcapp on 16/5/26.
//  Copyright © 2016年 LXH. All rights reserved.
//

#import "MYTableViewController.h"
#import "UIImageView+WebCache.h"



@interface MYTableViewController ()

@property (nonatomic ,strong) NSArray *imageUrlArray;

@end

@implementation MYTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    NSArray *links = @[
                       /*
                        You can add your image url here.
                        */
                       
                       // progressive jpeg
                       @"https://s-media-cache-ak0.pinimg.com/1200x/2e/0c/c5/2e0cc5d86e7b7cd42af225c29f21c37f.jpg",
                       
                     
                       
                       // jpg: https://dribbble.com/snootyfox
                       @"https://d13yacurqjgara.cloudfront.net/users/26059/screenshots/2047158/beerhenge.jpg",
                       @"https://d13yacurqjgara.cloudfront.net/users/26059/screenshots/2016158/avalanche.jpg",
                       @"https://d13yacurqjgara.cloudfront.net/users/26059/screenshots/1839353/pilsner.jpg",
                       @"https://d13yacurqjgara.cloudfront.net/users/26059/screenshots/1833469/porter.jpg",
                       @"https://d13yacurqjgara.cloudfront.net/users/26059/screenshots/1521183/farmers.jpg",
                       @"https://d13yacurqjgara.cloudfront.net/users/26059/screenshots/1391053/tents.jpg",
                       @"https://d13yacurqjgara.cloudfront.net/users/26059/screenshots/1399501/imperial_beer.jpg",
                       @"https://d13yacurqjgara.cloudfront.net/users/26059/screenshots/1488711/fishin.jpg",
                       @"https://d13yacurqjgara.cloudfront.net/users/26059/screenshots/1466318/getaway.jpg",
                       
                       // animated webp and apng: http://littlesvr.ca/apng/gif_apng_webp.html
                       @"http://littlesvr.ca/apng/images/BladeRunner.png",
                       @"http://littlesvr.ca/apng/images/Contact.webp",
                       ];

    self.imageUrlArray = links;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"xxxx"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"xxxx"];
    }
    
    [cell.imageView sd_setImageWithURL:[NSURL URLWithString:self.imageUrlArray[indexPath.row]] placeholderImage:nil options:SDWebImageProgressiveDownload completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        
    }];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
