//
//  ProfileDetailViewController.swift
//  Profiles
//
//  Created by Ian Richins on 6/19/20.
//  Copyright © 2020 Jimmy. All rights reserved.
//

import UIKit

class ProfileDetailViewController: UIViewController {
    
    var person: Person?
    
    // MARK: - Outlets
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bioTextField: UITextView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    
    // MARK: - Actions
    @IBAction func doneButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func setupViews() {
        guard let person = person else { return }
        nameLabel.text = person.name
        
    }

}
