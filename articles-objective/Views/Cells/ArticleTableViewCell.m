//
//  ArticleTableViewCell.m
//  articles-objective
//
//  Created by Jose Naranjo on 12/11/19.
//  Copyright © 2019 Jose Mario Naranjo Leiva. All rights reserved.
//

#import "ArticleTableViewCell.h"

@implementation ArticleTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void) configureCell: (Article*) article {
    _titleLabel.text = article.title;
    _subTitleLabel.text = article.description_text;
    _authorLabel.text = article.author;
    _dateLabel.text = article.date;
}

@end
