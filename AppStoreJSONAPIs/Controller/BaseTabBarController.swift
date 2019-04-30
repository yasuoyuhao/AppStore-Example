//
//  BaseTabBarController.swift
//  AppStoreJSONAPIs
//
//  Created by 陳囿豪 on 2019/4/19.
//  Copyright © 2019 yasuoyuhao. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [
            createNavController(viewController: AppsSearchController(), title: "搜索", image: #imageLiteral(resourceName: "search")),
            createNavController(viewController: UIViewController(), title: "今日", image: #imageLiteral(resourceName: "today_icon")),
            createNavController(viewController: UIViewController(), title: "應用", image: #imageLiteral(resourceName: "apps")),
        ]
    }
    
    fileprivate func createNavController(viewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navController = UINavigationController(rootViewController: viewController)
        navController.navigationBar.prefersLargeTitles = true
        viewController.navigationItem.title = title
        viewController.view.backgroundColor = .white
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        return navController
        
    }
}
