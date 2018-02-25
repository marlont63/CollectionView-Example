//
//  CollectionViewController.swift
//  CollectionViewExample
//
//  Created by Marlon Raschid Tavarez Parra on 24/2/18.
//  Copyright © 2018 es.mybcloud. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController {
    
    var arrayPolicy:[Policy] = []

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayPolicy.append(Policy(policyId: 1, name: "Marlon Raschid Tavarez Parra", number: "123123-123234-234245-35242", exp: "12/23"))
        arrayPolicy.append(Policy(policyId: 2, name: "Marlon Raschid Tavarez Parra", number: "123123-123234-234245-35242", exp: "12/23"))
        arrayPolicy.append(Policy(policyId: 3, name: "Marlon Raschid Tavarez Parra", number: "123123-123234-234245-35242", exp: "12/23"))
        arrayPolicy.append(Policy(policyId: 4, name: "Marlon Raschid Tavarez Parra", number: "123123-123234-234245-35242", exp: "12/23"))
        arrayPolicy.append(Policy(policyId: 5, name: "Marlon Raschid Tavarez Parra", number: "123123-123234-234245-35242", exp: "12/23"))
        arrayPolicy.append(Policy(policyId: 6, name: "Marlon Raschid Tavarez Parra", number: "123123-123234-234245-35242", exp: "12/23"))
        
        //let nib = UINib(nibName: "PolicyViewCell", bundle: nil)
        //collectionView.register(nib, forCellWithReuseIdentifier: "PolicyViewCell")
        
        collectionView.register(PolicyViewCell.self)
        
    }

}


extension CollectionViewController: UICollectionViewDelegate {
    
}

extension CollectionViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PolicyViewCell", for: indexPath) as? PolicyViewCell {
            cell.config(policy: arrayPolicy[indexPath.row])
            return cell
        }

        return UICollectionViewCell()
    }
    
    
}

extension CollectionViewController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.bounds.width - 20, height: self.view.bounds.height / 2 - 100)
    }
    
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets{
        return UIEdgeInsetsMake(0, 0, 0, 0)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func  collectionView(_ collectionView: UICollectionView,
                         layout collectionViewLayout: UICollectionViewLayout,
                         minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
