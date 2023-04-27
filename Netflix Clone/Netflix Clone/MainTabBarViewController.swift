//
//  ViewController.swift
//  Netflix Clone
//
//  Created by Thiago dos Santos Silva on 31/03/23.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        let vcHome = UINavigationController(rootViewController: HomeViewController())
        let vcUpcoming = UINavigationController(rootViewController: UpcomingViewController())
        let vcSearch = UINavigationController(rootViewController: SearchViewController())
        let vcDowload = UINavigationController(rootViewController: DownloadsViewController())
        
        vcHome.tabBarItem.image = UIImage(systemName: "house")
        vcUpcoming.tabBarItem.image = UIImage(systemName: "play.circle")
        vcSearch.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vcDowload.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        
        vcHome.title = "Home"
        vcUpcoming.title = "Coming Soon"
        vcSearch.title = "Top Search"
        vcDowload.title = "Downloads"
        
        tabBar.tintColor = .label
        
        setViewControllers([vcHome, vcUpcoming, vcSearch, vcDowload], animated: true)
        
    }


}

// https://youtu.be/KCgYDCKqato?t=4249 - continue daqui
