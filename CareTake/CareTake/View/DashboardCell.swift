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
    
    let date = UILabel()
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        addSubview(date)
        date.translatesAutoresizingMaskIntoConstraints = false
        date.topAnchor.constraint(equalTo: topAnchor, constant: 24).isActive = true
        date.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        date.font = UIFont(name: "HelveticaNeue-light", size: fontSize.xXLarge.rawValue)
        date.textColor = .white
        date.text = "Kash is a bitch"
    }
}
