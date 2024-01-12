//
//  CharacterListViewViewModel.swift
//  Rick and morty
//
//  Created by Rahul  on 12/01/24.
//
import UIKit

final class CharacterListViewViewModel : NSObject{
    func fetchCharacters(){
        RMService.shared.execute(.listCharachters, expecting: RMCharachtersList.self) { result in
            switch result {
            case .success(let model):
                print(String(model.results.count))
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }
}

extension CharacterListViewViewModel : UICollectionViewDataSource , UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor  = .systemGreen
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let bounds = UIScreen.main.bounds
        let w = (bounds.width-30)/2
        return CGSize(width: w , height: w * 1.5)
    }
}
