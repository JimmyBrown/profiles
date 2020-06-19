//
//  ProfilesViewController.swift
//  Profiles
//
//  Created by Ian Richins on 6/19/20.
//  Copyright © 2020 Jimmy. All rights reserved.
//

import UIKit

class ProfilesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func setupViews() {
           addEmitter()
        
       }
       
       func addEmitter() {
              let emitter = Emitter.get(with: #imageLiteral(resourceName: "Star"))
              emitter.emitterPosition = CGPoint(x: view.frame.width / 2, y: 0)
              emitter.emitterSize = CGSize(width: view.frame.width, height: 1)
              view.layer.insertSublayer(emitter, at: 0)
          }

}
