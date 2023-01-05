//
//  MYcell.m
//  自定义cell
//
//  Created by 翟旭博 on 2022/7/16.
//

#import "MYTableViewCell.h"

@implementation MYTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    self.label = [[UILabel alloc] init];
    [self.contentView addSubview: self.label];

    self.imageview = [[UIImageView alloc] init];
    [self.contentView addSubview: _imageview];
    
    return self;
}

- (void)layoutSubviews {

    _label.frame = CGRectMake(30, 10, 100, 50);

    
    _imageview.frame = CGRectMake(100, 10, 50, 50);

}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
