//
//  RouteFindingPageView.swift
//  OrrRock
//
//  Created by Park Sungmin on 2022/11/25.
//

import UIKit
import SnapKit

final class RouteFindingPageView: UIView {
    
    var pageInfo: PageInfo?
    var points: [PointInfo] = []
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        pageInfo = testData
//        points = dummyData
        configureTestData()
        configureButtons()

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureTestData(){
        guard let points = pageInfo?.points, pageInfo?.rowOrder == 0 else {
            return
        }
        for point in points {
            let button = point.footOrHand == .hand ? RouteFindingFeatureHandButton() : RouteFindingFeatureFootButton()
            self.addSubview(button)
            button.snp.makeConstraints {
                $0.edges.equalToSuperview()
            }
        }
    }
    
    func configureButtons() {
//        guard let points = points else { return }
        for point in points {
            let button = point.footOrHand == .hand ? RouteFindingFeatureHandButton() : RouteFindingFeatureFootButton()
            self.addSubview(button)
            button.snp.makeConstraints {
                $0.edges.equalToSuperview()
            }
        }
    }
}

//var testData = PageInfo(rowOrder: 0,
//                        points: [PointInfo(footOrHand: .hand,
//                                          isForce: true,
//                                          position: CGPoint(x: 0, y: 0),
//                                          forceDirection: .pi0),
//                                 PointInfo(footOrHand: .foot,
//                                                   isForce: true,
//                                                   position: CGPoint(x: 0, y: 0),
//                                                   forceDirection: .pi0),
//                                 PointInfo(footOrHand: .hand,
//                                                   isForce: true,
//                                                   position: CGPoint(x: 0, y: 0),
//                                                   forceDirection: .pi0)])
//
//var dummyData = [PointInfo(footOrHand: .foot, isForce: true, position: CGPoint(x: 0, y: 0), forceDirection: .pi0),
//                 PointInfo(footOrHand: .hand, isForce: true, position: CGPoint(x: 50, y: 50), forceDirection: .pi0),
//                 PointInfo(footOrHand: .foot, isForce: true, position: CGPoint(x: 100, y: 100), forceDirection: .pi0)]
