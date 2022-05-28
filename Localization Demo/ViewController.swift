//
//  ViewController.swift
//  Localization Demo
//
//  Created by BolaGamal on 5/20/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var arrowImage: UIImageView!
    @IBOutlet weak var languageCheckLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        languageCheckLabel.text = "language_choose".localized
        arrowImage.image = UIImage(named: "arrowr".localized)
        
    }
   

//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//    
//        //image literal
//        arrowImage.image = #imageLiteral(resourceName: "arrowr").imageFlippedForRightToLeftLayoutDirection()
//    }
    
    @IBAction func changeLanguage(_ sender: Any) {
        if LocalizationManager.shared.getLanguage() == .Arabic {
            LocalizationManager.shared.setLanguage(language: .English)
        } else {
            LocalizationManager.shared.setLanguage(language: .Arabic)
        }
    }
    
}

