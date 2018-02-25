//
//  ViewController.swift
//  CollectionViewExample
//
//  Created by Marlon Raschid Tavarez Parra on 24/2/18.
//  Copyright © 2018 es.mybcloud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rounderView: RounderView!
    @IBOutlet weak var goToCollectionViewButton: ButtonRounder!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    
    func setupUI() {
        rounderView.addRounder()
        goToCollectionViewButton.addRounder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

