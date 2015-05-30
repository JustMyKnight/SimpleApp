//
//  CollectionViewCell.m
//  SimpleAPP
//
//  Created by Admin on 30.05.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "CollectionViewCell.h"

@interface CollectionViewCell()
@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation CollectionViewCell

- (void)viewDidLoad
{
    self.scrollview.minimumZoomScale=0.5;
    self.scrollview.maximumZoomScale=6.0;
    //self.scrollview.delegate=self;
    
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        NSArray *arrayOfViews = [[NSBundle mainBundle] loadNibNamed:@"CollectionViewCell" owner:self options:nil];
        
        if ([arrayOfViews count] < 1) {
            return nil;
        }
        
        if (![[arrayOfViews objectAtIndex:0] isKindOfClass:[UICollectionViewCell class]]) {
            return nil;
        }
        
        self = [arrayOfViews objectAtIndex:0];
    }
    
    return self;
}

-(void)updateCell {
    
    NSString *sourcePath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"Assets"];
    NSString *filename = [NSString stringWithFormat:@"%@/%@", sourcePath, self.imageName];
    
    UIImage *image = [UIImage imageWithContentsOfFile:filename];
    
    [self.imageView setImage:image];
    [self.imageView setContentMode:UIViewContentModeScaleAspectFit];
    
}

@end