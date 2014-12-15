//
//  GalleryViewController.m
//  Tarotarot
//
//  Created by 翟冰洁 on 14-11-30.
//  Copyright (c) 2014年 翟冰洁. All rights reserved.
//

#import "GalleryViewController.h"

@interface GalleryViewController ()

@end

@implementation GalleryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.collection registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:NO];
    self.collection.backgroundColor = [UIColor clearColor];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:YES];
}

//设置分区
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 21;
}

//每个分区上的元素个数
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 1;
}

//设置元素内容
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell= (UICollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];//(ImageCell *)
    UIButton *imageButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 197, 342)];
    NSString *imageName = [NSString stringWithFormat:@"i%d.png", indexPath.section];
    [imageButton setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [cell.contentView addSubview:imageButton];
    return cell;
}

//定义每个UICollectionView 的大小
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(197, 342);
}

@end
