//
//  RouteFindingFeatureHandButton.swift
//  OrrRock
//
//  Created by Yeni Hwang on 2022/11/29.
//

import UIKit

class RouteFindingFeatureHandButton: UIButton {
    
    var positionX: Float?
    var positionY: Float?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setImage(UIImage(named: "fail_icon"), for: .normal)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
