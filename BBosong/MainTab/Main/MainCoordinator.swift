//
//  MainCoordinator.swift
//  BBosong
//
//  Created by 김미진 on 11/29/23.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController
    let tabBarController: MainTabBarController

    init(navigationController: UINavigationController, tabBarController: MainTabBarController) {
        self.navigationController = navigationController
        self.tabBarController = tabBarController
    }

    func start() {
        let HomeVC = TabHomeViewController()
        let SettingVC = TabSettingViewController()

        let HomeItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house.fill")!.imageWithColor(UIColor.BBColor.whiteColor), selectedImage: UIImage(systemName: "house.fill")!.imageWithColor(UIColor.BBColor.mainColor))
        let SettingItem = UITabBarItem(title: "Setting", image: UIImage(systemName: "gearshape.fill")!.imageWithColor(UIColor.BBColor.whiteColor), selectedImage: UIImage(systemName: "gearshape.fill")!.imageWithColor(UIColor.BBColor.mainColor))

        HomeVC.tabBarItem = HomeItem
        SettingVC.tabBarItem = SettingItem

        tabBarController.setViewControllers([HomeVC, SettingVC], animated: false)
        navigationController.setViewControllers([tabBarController], animated: false)
    }
}
