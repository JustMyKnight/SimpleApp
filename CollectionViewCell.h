//
//  CollectionViewCell.h
//  SimpleAPP
//
//  Created by Admin on 30.05.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionViewCell : UICollectionViewCell
{
IBOutlet UIScrollView *scrollview;
}
@property (nonatomic, strong) NSString *imageName;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollview;

-(void)updateCell;

@end
