//
//  CardView.swift
//  AdapterPattern
//
//  Created by FrankLiu on 15/12/15.
//  Copyright © 2015年 FrankLiu. All rights reserved.
//

import UIKit

enum CardViewError : ErrorType {

    case FrameTooSmallError
}

class CardView: UIView {
    
    var nameLabel        : UILabel!
    var ageLabel         : UILabel!
    var descriptionLabel : UILabel!
    
    override init(frame: CGRect) {
        
        let frameIsAvailable : Bool = frame.width >= 40 && frame.height >= 160
        
        assert(frameIsAvailable, "宽度应大于40,高度应大于160")
        
        super.init(frame: frame)
        
        self.nameLabel        = UILabel(frame: CGRect(x: 30, y: 30, width: frame.width - 30.0, height: 30))
        self.ageLabel         = UILabel(frame: CGRect(x: 30, y: 30 + 30 + 20, width: frame.width - 30.0, height: 30))
        self.descriptionLabel = UILabel(frame: CGRect(x: 30, y: 30 + 30 + 20 + 30 + 20, width: frame.width - 30.0, height: 30))
        
        self.addSubview(self.nameLabel)
        self.addSubview(self.ageLabel)
        self.addSubview(self.descriptionLabel)
        
        self.layer.borderWidth = 0.5
        self.backgroundColor   = UIColor.orangeColor()
    }
    
    convenience init(frame: CGRect, name: String, age: String, description: String ) {
        
        self.init(frame:frame)
        self.nameLabel.text        = name
        self.ageLabel.text         = age
        self.descriptionLabel.text = description
    }
    
    func loadData(data : ProfileProtocol) {
    
        self.nameLabel.text        = data.name
        self.ageLabel.text         = data.age
        self.descriptionLabel.text = data.description
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
