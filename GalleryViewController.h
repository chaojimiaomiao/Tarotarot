//
//  GalleryViewController.h
//  Tarotarot
//
//  Created by 翟冰洁 on 14-11-30.
//  Copyright (c) 2014年 翟冰洁. All rights reserved.
//

#import "BaseViewController.h"

@interface GalleryViewController : BaseViewController<UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

@property(nonatomic, strong) IBOutlet UICollectionView *collection;
@property(nonatomic, strong) IBOutlet UIView *backgroundView;

@end

//@interface ImageCell : UICollectionViewCell
//
//@property(nonatomic, strong) UIImageView *cardImageView;
//
//@end
