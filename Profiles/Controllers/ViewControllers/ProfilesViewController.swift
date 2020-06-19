//
//  ProfilesViewController.swift
//  Profiles
//
//  Created by Ian Richins on 6/19/20.
//  Copyright © 2020 Jimmy. All rights reserved.
//

import UIKit

class ProfilesViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var iamImageView: UIImageView!
    @IBOutlet weak var jimmyImageView: UIImageView!
    @IBOutlet weak var ianButton: UIButton!
    @IBOutlet weak var jimmyButton: UIButton!
    

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
        
        self.iamImageView.layer.cornerRadius = iamImageView.frame.height / 2
        self.jimmyImageView.layer.cornerRadius = jimmyImageView.frame.height / 2
        self.iamImageView.image = person1.image
        self.jimmyImageView.image = person2.image
        
        
       }
       
       func addEmitter() {
              let emitter = Emitter.get(with: #imageLiteral(resourceName: "Star"))
              emitter.emitterPosition = CGPoint(x: view.frame.width / 2, y: 0)
              emitter.emitterSize = CGSize(width: view.frame.width, height: 1)
              view.layer.insertSublayer(emitter, at: 0)
          }

}
