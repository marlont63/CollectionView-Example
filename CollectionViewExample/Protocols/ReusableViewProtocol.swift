//
//  ReusableViewProtocol.swift
//  CollectionViewExample
//
//  Created by Marlon Raschid Tavarez Parra on 25/2/18.
//  Copyright © 2018 es.mybcloud. All rights reserved.
//

import UIKit

protocol ReusableViewProtocol: class { }


extension ReusableViewProtocol where Self:UIView {
    static var reuseIndentifier:String {
        return String(describing: self)
    }
}
