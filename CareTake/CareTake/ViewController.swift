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
    }
    
    let profile = ProfileController()
    profile.tabBarItem = UITabBarItem(title: "Profile", image: #imageLiteral(resourceName: "profile"), tag: 3)
    
    let thought = ThoughtsController()
    thought.tabBarItem = UITabBarItem(title: "Thoughts", image: #imageLiteral(resourceName: "thoughts"), tag: 1)
    
    let tabBarList = [dashboard, thought, connection, profile]
    
    viewControllers = tabBarList
    
    self.tabBar.layer.opacity = 0.7
    self.tabBar.barStyle = UIBarStyle.blackOpaque


}

