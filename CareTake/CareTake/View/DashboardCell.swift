//
//  DashboardCell.swift
//  CareTake
//
//  Created by Dev on 11/17/18.
//  Copyright © 2018 Wesaturate. All rights reserved.
//

import Foundation
import UIKit

class RecordCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .black
        setupViews()
        self.layer.cornerRadius = 10
    }
    
    var date = UILabel()
    let line = UIView()
    let painLabel = UILabel()
    var pain = PainView(pain: 8, frame: CGRect(x: 20, y: 100, width: 100, height: 100))
    var fatigue = UILabel()
    var foodEaten = UILabel()
    let symptomsCV: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let frame = CGRect(x: 0, y: ScreenSize.SCREEN_HEIGHT / 5.5, width: ScreenSize.SCREEN_WIDTH , height: 108)
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: frame, collectionViewLayout: layout)
        cv.backgroundColor = UIColor(red:0.91, green:0.91, blue:0.91, alpha:1.0)
        cv.isSpringLoaded = true
        cv.showsHorizontalScrollIndicator = false
        return cv
    }()
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        addSubview(date)
        addSubview(line)
        addSubview(painLabel)
        addSubview(pain)
        addSubview(fatigue)
        addSubview(foodEaten)
        
        date.translatesAutoresizingMaskIntoConstraints = false
        date.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true
        date.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        
        line.translatesAutoresizingMaskIntoConstraints = false
        line.topAnchor.constraint(equalTo: date.bottomAnchor, constant: 10).isActive = true
        line.setHeightWidth(width: ScreenSize.SCREEN_WIDTH - 25, height: 3)
        
        painLabel.translatesAutoresizingMaskIntoConstraints = false
        painLabel.topAnchor.constraint(equalTo: line.bottomAnchor, constant: 10).isActive = true
        painLabel.centerXAnchor.constraint(equalTo: pain.centerXAnchor).isActive = true
        
        
        
        standardStyling()
    }
    
    func standardStyling() {
        date.font = UIFont(name: "HelveticaNeue-bold", size: fontSize.xXXLarge.rawValue)
        date.textColor = .white
        date.text = "March 24th, 2018"
        
        painLabel.text = "Pain"
        painLabel.font = UIFont(name: "HelveticaNeue-bold", size: fontSize.large.rawValue)
        painLabel.textColor = .white
        
        line.backgroundColor = UIColor(hex: "0E253D")
    }
}
