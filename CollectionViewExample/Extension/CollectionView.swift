//
//  CollectionView.swift
//  CollectionViewExample
//
//  Created by Marlon Raschid Tavarez Parra on 25/2/18.
//  Copyright © 2018 es.mybcloud. All rights reserved.
//

import UIKit

extension UICollectionView {
    func register<T: UICollectionViewCell>(_: T.Type) where T: ReusableViewProtocol, T: NibLoadableViewProtocol {
        
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.reuseIndentifier)
    }
    
    func dequeueReusableCell<T: UICollectionViewCell>(forIndexPath indexPath:NSIndexPath) -> T where T: ReusableViewProtocol {
        
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIndentifier, for: indexPath as IndexPath) as? T else {
            fatalError("No se ha podido cargar el tipo de UICollectionViewCell con el reusableIndentifier \(T.reuseIndentifier)")
        }
        return cell
    }
}


extension UICollectionViewCell : ReusableViewProtocol {}
