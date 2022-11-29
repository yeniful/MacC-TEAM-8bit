//
//  RouteFindingFeatureFootButton.swift
//  OrrRock
//
//  Created by Yeni Hwang on 2022/11/29.
//

import UIKit

class RouteFindingFeatureFootButton: UIButton {
    
    var positionX: Float?
    var positionY: Float?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setImage(UIImage(named: "success_icon")!.resized(to: CGSize(width: 40, height: 40)), for: .normal)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
