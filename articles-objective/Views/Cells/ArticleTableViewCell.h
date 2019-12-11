//
//  ArticleTableViewCell.h
//  articles-objective
//
//  Created by Jose Naranjo on 12/11/19.
//  Copyright © 2019 Jose Mario Naranjo Leiva. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "../../Models/Article.h"

NS_ASSUME_NONNULL_BEGIN

@interface ArticleTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *subTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *authorLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;

- (void) configureCell: (Article*) article;

@end

NS_ASSUME_NONNULL_END
