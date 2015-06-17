//
//  JACenterTableViewCell.swift
//  Town
//
//  Created by john.wei on 15/6/17.
//  Copyright (c) 2015年 whj. All rights reserved.
//

import UIKit

class JACenterTableViewCell: UITableViewCell {
    
    var titleImageView:UIImageView?
    var nameLabel:UILabel?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
    
        titleImageView = UIImageView(frame: CGRectMake(20, 10, 72, 72))
        self.contentView.addSubview(titleImageView!)
        
        nameLabel = UILabel(frame: CGRectMake(120, 25,120, 42))
        self.contentView.addSubview(nameLabel!)
        
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
