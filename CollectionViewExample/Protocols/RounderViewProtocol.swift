//
//  RounderViewProtocol.swift
//  CollectionViewExample
//
//  Created by Marlon Raschid Tavarez Parra on 24/2/18.
//  Copyright © 2018 es.mybcloud. All rights reserved.
//

import UIKit



protocol RounderViewProtocol {}

extension RounderViewProtocol where Self : UIView {
    func addRounder() {
        self.layer.cornerRadius = self.frame.height / 2
    }
}


