//
//  RouteFindingCollectionViewCustomCell.swift
//  OrrRock
//
//  Created by dohankim on 2022/11/24.
//

import UIKit
import SnapKit

class RouteFindingCollectionViewCustomCell : UICollectionViewCell {
    static let identifier = "RouteFindingCollectionViewCustomCell"
    
    //MARK: UI수정될것 같아서 남겨둠
//    override var isHighlighted: Bool{
//        didSet{
//            cellBlurView.isHidden = !isHighlighted
//        }
//    }
    
    override var isSelected: Bool{
        didSet{
//            cellBlurView.isHidden = !isSelected
            checkImage.isHidden = !isSelected
        }
    }
    
    var isSelectable = false{
        didSet{
            checkImage.isHidden = !isSelectable
        }
    }
//    lazy var cellBlurView : UIView = {
//        let uiView = UIView()
//        uiView.backgroundColor = .white.withAlphaComponent(0.3)
//        uiView.isHidden = true
//        return uiView
//    }()
    
    lazy var selectableImage : UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "notCheckIcon")
        imageView.isHidden = true
        return imageView
    }()
    
    lazy var checkImage : UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Check")
        imageView.isHidden = true
        return imageView
    }()
    
    lazy var cellImage : UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "s")
        img.contentMode = .scaleAspectFill
        img.layer.masksToBounds = true
        return img
    }()
    
    lazy var infoView : UIView = {
        let view = UIView()
        view.backgroundColor = .orrWhite
        return view
    }()
    
    lazy var cellTitleLabel : UILabel = {
        let label = UILabel()
        label.text = "아띠 클라이밍"
        label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        return label
    }()
    
    lazy var cellDateLabel : UILabel = {
        let label = UILabel()
        label.text = "아띠 클라이밍"
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        return label
    }()
    
    lazy var cellLevelLabel : UILabel = {
        let label = UILabel()
        label.text = "V3"
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        return label
    }()
    
    lazy var cellChallengeLabel : UILabel = {
        let label = UILabel()
        label.text = "도전 중"
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setUpLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpLayout() {
        self.backgroundColor = .gray
        self.addSubview(cellImage)
        cellImage.snp.makeConstraints {
            $0.leading.top.trailing.bottom.equalTo(0)
        }

//        self.addSubview(cellBlurView)
//        cellBlurView.snp.makeConstraints {
//            $0.edges.equalToSuperview()
//        }
        
        self.addSubview(checkImage)
        checkImage.snp.makeConstraints {
            $0.top.equalToSuperview().offset(OrrPd.pd8.rawValue)
            $0.trailing.equalToSuperview().offset(OrrPd.pd8.rawValue)
        }
        
        self.addSubview(selectableImage)
        selectableImage.snp.makeConstraints {
            $0.top.equalToSuperview().offset(OrrPd.pd8.rawValue)
            $0.trailing.equalToSuperview().offset(OrrPd.pd8.rawValue)
        }
        
        self.addSubview(infoView)
        infoView.snp.makeConstraints {
            $0.bottom.equalToSuperview()
            $0.centerX.equalTo(self.snp.centerX)
            $0.width.equalToSuperview()
            $0.height.equalTo(94)
        }
        
        infoView.addSubview(cellTitleLabel)
        cellTitleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().inset(12)
            $0.leading.equalToSuperview().inset(OrrPd.pd8.rawValue)
        }
        
        infoView.addSubview(cellDateLabel)
        cellDateLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(OrrPd.pd8.rawValue)
            $0.top.equalTo(cellTitleLabel).offset(OrrPd.pd4.rawValue)
        }
        
        infoView.addSubview(cellLevelLabel)
        cellLevelLabel.snp.makeConstraints {
            $0.top.equalTo(cellDateLabel).offset(6)
            $0.leading.equalToSuperview().inset(12)
        }
        
        infoView.addSubview(cellChallengeLabel)
        cellChallengeLabel.snp.makeConstraints {
            $0.leading.equalTo(cellLevelLabel).offset(OrrPd.pd4.rawValue)
            $0.centerY.equalTo(cellLevelLabel)
        }
    }
}

