//
//  Donut.swift
//  Donut Gallery
//
//  Created by Lucas Loughner on 3/5/17.
//  Copyright © 2017 Lucas Industries. All rights reserved.
//

import Foundation
import UIKit

class Donut {
    
    private var _title: String!
    private var _imageName: String!
    private var _donutDetails: String!
    private var _donutImage: UIImage!
    
    var title: String {
        return _title
    }
    
    var imageName: String {
        return _imageName
    }
    
    var donutDetails: String {
        return _donutDetails
    }
    
    var donutImage: UIImage {
        return _donutImage
    }
    
    init(title: String, imageName: String, details: String) {
        _title = title
        _imageName = imageName
        _donutDetails = details
        _donutImage = UIImage(named: imageName)
    }
    
    
    

    
    
}







