//
//  Policy.swift
//  CollectionViewExample
//
//  Created by Marlon Raschid Tavarez Parra on 24/2/18.
//  Copyright © 2018 es.mybcloud. All rights reserved.
//

import Foundation

struct Policy {
    var policyId : Int
    var name : String
    var number : String
    var exp : String
    
    init(policyId:Int, name:String, number:String,exp:String) {
        self.policyId = policyId
        self.name = name
        self.number = number
        self.exp = exp
    }
}
