//
//  ViewController.swift
//  CollectionTest
//
//  Created by PST on 2019/12/04.
//  Copyright © 2019 PST. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    var friends: [Friend] = []
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        
        let flowLayout: UICollectionViewFlowLayout
        flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets.zero
        flowLayout.minimumInteritemSpacing = 10
        flowLayout.minimumLineSpacing = 10
        
        let halfWidth: CGFloat = UIScreen.main.bounds.width / 2.0
        flowLayout.estimatedItemSize = CGSize(width: halfWidth - 30, height: 90)
        self.collectionView.collectionViewLayout = flowLayout 
        
        super.viewDidLoad()
        
        let jsonDeocoder: JSONDecoder = JSONDecoder()
        
        guard let dataAsset: NSDataAsset = NSDataAsset(name: "friends") else {
            return
        }
        
        do {
            self.friends = try jsonDeocoder.decode([Friend].self, from: dataAsset.data)
        } catch {
            print(error.localizedDescription)
        }
        
        self.collectionView.reloadData()
    }


}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.friends.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: FriendCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! FriendCollectionViewCell
        
        let friend: Friend = self.friends[indexPath.row]
        cell.nameAgeLabel.text = friend.nameAndAge
        cell.addressLabe.text = friend.fullAddress
        
        return cell
    }
    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        
//        self.numberOfCell += 1
//        collectionView.reloadData()
//    }
     
}
