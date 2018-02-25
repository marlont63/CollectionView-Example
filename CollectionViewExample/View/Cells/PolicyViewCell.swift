//
//  PolicyViewCell.swift
//  CollectionViewExample
//
//  Created by Marlon Raschid Tavarez Parra on 24/2/18.
//  Copyright © 2018 es.mybcloud. All rights reserved.
//

import UIKit

class PolicyViewCell: UICollectionViewCell, CornerRadiusViewProtocol, NibLoadableViewProtocol {
    @IBOutlet weak var policyView: UIView!
    @IBOutlet weak var policyName: UILabel!
    @IBOutlet weak var policyNumber: UILabel!
    @IBOutlet weak var policyExp: UILabel!
    
    func config(policy:Policy) {
        policyName.text = policy.name
        policyNumber.text = policy.number
        policyExp.text = policy.exp
        policyView.layer.cornerRadius = 10
    }
}
