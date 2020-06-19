//
//  Person.swift
//  Profiles
//
//  Created by Ian Richins on 6/19/20.
//  Copyright © 2020 Jimmy. All rights reserved.
//
import foundation
import UIKit.UIImage

class Person: Codable {
    
    var name: String
    var bio: String
    var image: UIImage
    
    init(name: String, bio: String, image: UIImage)
    self.name = name
    self.bio = bio
    self.image = image
    
}
