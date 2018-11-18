//
//  ViewController.swift
//  CareTake
//
//  Created by Dev on 11/17/18.
//  Copyright © 2018 Wesaturate. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let profile = ProfileController()
        profile.tabBarItem = UITabBarItem(tabBarSystemItem: .mostRecent, tag: 0)

        let dashboard = DashboardController()
        dashboard.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 1)
        
        let tabBarList = [dashboard, profile]
        
        viewControllers = tabBarList
        
        self.tabBar.layer.opacity = 0.7
        self.tabBar.barStyle = UIBarStyle.blackOpaque
    }

}

