//
//  ArticlesListViewController.m
//  articles-objective
//
//  Created by Jose Naranjo on 12/11/19.
//  Copyright © 2019 Jose Mario Naranjo Leiva. All rights reserved.
//

#import "ArticlesListViewController.h"
#import "../Views/Cells/ArticleTableViewCell.h"

@interface ArticlesListViewController ()
@property (weak, nonatomic) IBOutlet UITableView *articleTableView;
@property (nonatomic) NSArray* articles;
@end

@implementation ArticlesListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.articleTableView registerNib:[UINib nibWithNibName:@"ArticleTableViewCell" bundle:nil]
    forCellReuseIdentifier:@"ArticleCell"];
    self.articleTableView.delegate = self;
    self.articleTableView.dataSource = self;
    
    self.client = [NSURLSession sharedSession];
    [self fetchData];
}

- (void)fetchData {
    [self.client getArticles:^(ArticlesResponse *response) {
        self->_articles = response.articles;
        self->_articleTableView.reloadData;
    }];
    
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    static NSString *simpleTableIdentifier = @"ArticleCell";
    
    ArticleTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    Article *article = [_articles objectAtIndex:indexPath.row];
    [cell configureCell:article];
    
    //cell.titleLabel.text = article.title;
    //cell.subTitleLabel.text = article.description_text;
    
    return cell;

}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _articles.count;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //NSURL* url = [[NSURL alloc] initWithString: @"http://www.cnn.com"];
    Article *article = [_articles objectAtIndex:indexPath.row];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString: article.link] options:@{} completionHandler:nil];
}


@end
