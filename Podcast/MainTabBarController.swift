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
        
        tabBar.tintColor = .purple
        UINavigationBar.appearance().prefersLargeTitles = true
        viewControllers = [
            navController(rootController: PodcastsSearchController(),title: "Favorites", icon: UIImage(systemName: "star.fill") ?? UIImage()),
            navController(rootController: ViewController(), title: "Search", icon: UIImage(systemName: "magnifyingglass") ?? UIImage()),
            navController(rootController: ViewController(), title: "Downloads", icon: UIImage(systemName: "square.and.arrow.down") ?? UIImage())
        ]
    }
    
    
    fileprivate func navController(rootController: UIViewController, title: String, icon: UIImage) -> UINavigationController{
        let navController = UINavigationController(rootViewController: rootController)
        navController.tabBarItem.title = title
        rootController.navigationItem.title = title
//        navController.navigationBar.prefersLargeTitles = true
        navController.tabBarItem.image = icon
        return navController
    }
}
