//
//  PainView.swift
//  CareTake
//
//  Created by Dev on 11/18/18.
//  Copyright © 2018 Wesaturate. All rights reserved.
//

import Foundation
import UIKit

class LargeDisplay: UIView {
    var painCount: Int?
    var painLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    convenience init(pain: Int, frame: CGRect) {
        self.init(frame: frame)
        self.painCount = pain
        buildColor(pain: pain)
        self.layer.cornerRadius = 10
    }
    
    func buildColor(pain: Int) {
        switch pain {
        case 1,2,3:
            self.backgroundColor = .white
            painLabel.textColor = .black
        case 4,5,6:
            self.backgroundColor = UIColor(hex: "6271fc", alpha: 1.0)
            painLabel.textColor = .black
        case 7,8,9:
            self.backgroundColor = UIColor(hex: "E91E63", alpha: 0.70)
            painLabel.textColor = .white
        default:
            self.backgroundColor = UIColor(hex: "E91E63", alpha: 0.70)
            painLabel.textColor = .white
        }
        
        addSubview(painLabel)
        painLabel.translatesAutoresizingMaskIntoConstraints = false
        painLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        painLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        painLabel.text = "\(pain)"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
