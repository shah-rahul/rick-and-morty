//
//  ViewController.swift
//  Rick and morty
//
//  Created by Rahul  on 11/01/24.
//

import UIKit

final class RMTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabs()
        // Do any additional setup after loading the view.
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
        
        for nav in [charTab,locationTab,episodeTab,settingTab] {
            nav.navigationBar.prefersLargeTitles = true
        }
        setViewControllers([charTab, locationTab, episodeTab,settingTab], animated: true)
    }

}

