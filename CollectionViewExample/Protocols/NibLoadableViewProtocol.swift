//
//  NibLoadableViewProtocol.swift
//  CollectionViewExample
//
//  Created by Marlon Raschid Tavarez Parra on 25/2/18.
//  Copyright © 2018 es.mybcloud. All rights reserved.
//

import UIKit

protocol NibLoadableViewProtocol: class { }

extension NibLoadableViewProtocol where Self: UIView {
    static var nibName:String {
        return String(describing: self)
    }
}
