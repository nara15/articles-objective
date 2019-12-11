//
//  ArticlesListViewController.h
//  articles-objective
//
//  Created by Jose Naranjo on 12/11/19.
//  Copyright © 2019 Jose Mario Naranjo Leiva. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "../Modules/Networking/Networking.h"
#import "../Modules/API/BeenVerifiedClient.h"

NS_ASSUME_NONNULL_BEGIN

@interface ArticlesListViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic) id<APIClient, BeenVerifiedClient> client;

@end

NS_ASSUME_NONNULL_END
