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
        setupViews()
    }
    
    func setupViews() {
        let personArray: [Person] = []
         let person1 = Person(name: "Ian", bio: "Aspiring iOS Developer at DevMountain!", image: #imageLiteral(resourceName: <#T##String#>))
        let person2 = Person(name: "Jimmy", bio: "Aspiring iOS Developer at DevMountain!", image: #imageLiteral(resourceName: <#T##String#>))
        
        personArray.append(person1)
        personArray.append(person2)
        
        PersonController.shared.profile = personArray
           addEmitter()
        
       }
       
       func addEmitter() {
              let emitter = Emitter.get(with: #imageLiteral(resourceName: "Star"))
              emitter.emitterPosition = CGPoint(x: view.frame.width / 2, y: 0)
              emitter.emitterSize = CGSize(width: view.frame.width, height: 1)
              view.layer.insertSublayer(emitter, at: 0)
          }

}
