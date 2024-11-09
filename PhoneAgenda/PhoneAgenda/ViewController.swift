//
//  ViewController.swift
//  PhoneAgenda
//
//  Created by iOSLab on 09/11/24.
//

import UIKit


class ViewController: UIViewController {
   
    let mockUserName = "Ana Paula Santana"
    
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var initialsContainerView: UIView!
    @IBOutlet var initialLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        initialsContainerView.layer.borderWidth = 1
        initialsContainerView.layer.borderColor = UIColor.white.cgColor
        initialsContainerView.layer.cornerRadius = initialsContainerView.frame.height/2
        
        nameLabel.text = mockUserName
        initialLabel.text = getInitials(from: mockUserName)
    }
    private func getInitials (from name: String) -> String{
        let names = name.split(separator: " ")
        if let firtsLetter = names.first?.first,
           let secondLetter = names.last?.first{
            return "\(firtsLetter)\(secondLetter)"
        }
        return ""
    }

}

