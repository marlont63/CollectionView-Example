//
//  ConerRadiusViewProtocol.swift
//  CollectionViewExample
//
//  Created by Marlon Raschid Tavarez Parra on 24/2/18.
//  Copyright © 2018 es.mybcloud. All rights reserved.
//

import UIKit

protocol CornerRadiusViewProtocol {}


extension CornerRadiusViewProtocol where Self: UIView {
    func addCornerRadius() {
        self.layer.cornerRadius = 10
        self.backgroundColor = UIColor.red
    }
}
