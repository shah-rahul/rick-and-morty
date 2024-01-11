//
//  ViewController.swift
//  Rick and morty
//
//  Created by Rahul  on 11/01/24.
//

import UIKit

/// controllers to house tabs and root tab controllers
final class RMTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabs()
    }
    private func setUpTabs() {
        let charachtersVC = RMCharacterViewController()
        let locationsVC = RMLocationViewController()
        let episodesVC = RMEpisodeViewController()
        let settingsVC = RMSettingsViewController()
        charachtersVC.navigationItem.largeTitleDisplayMode = .automatic
        locationsVC.navigationItem.largeTitleDisplayMode = .automatic
        episodesVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        let charTab = UINavigationController(rootViewController: charachtersVC)
        let locationTab = UINavigationController(rootViewController: locationsVC)
        let episodeTab = UINavigationController(rootViewController: episodesVC)
        let settingTab = UINavigationController(rootViewController: settingsVC)
        charTab.tabBarItem = UITabBarItem(title: "Characters", image: UIImage(systemName: "person"), tag: 1)
        locationTab.tabBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "globe"), tag: 2)
        episodeTab.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "tv"), tag: 3)
        settingTab.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 4)
        
        for nav in [charTab,locationTab,episodeTab,settingTab] {
            nav.navigationBar.prefersLargeTitles = true
        }
        setViewControllers([charTab, locationTab, episodeTab,settingTab], animated: true)
    }

}

