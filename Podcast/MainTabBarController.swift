//
//  MainTabBarController.swift
//  Podcast
//
//  Created by 11ien on 4/23/20.
//  Copyright © 2020 11ien. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController{
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
      
        
        let favoritesNavController = UINavigationController(rootViewController: ViewController())
        favoritesNavController.tabBarItem.title = "Favorites"
        
        let searchNavController = UINavigationController(rootViewController: ViewController())
        searchNavController.tabBarItem.title = "Search"
        
        
        viewControllers = [
            favoritesNavController,
            searchNavController
        ]
    }
}
