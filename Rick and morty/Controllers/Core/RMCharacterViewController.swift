//
//  RMCharacterViewController.swift
//  Rick and morty
//
//  Created by Rahul  on 11/01/24.
//

import UIKit

/// controller to show can search characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        let request = RMRequest(endpoint: .character,pathComponents: ["1"],queryParameter: [ URLQueryItem(name: "name", value: "rick"),URLQueryItem(name: "stauts", value: "alive")])
        print(request.url)
        
    }
}
