//
//  DetalheAtividadeViewController.swift
//  Study
//
//  Created by Pedro Furtado on 22/01/20.
//  Copyright © 2020 David Augusto. All rights reserved.
//

import UIKit

class DetalheAtividadeViewController: UIViewController {

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    

        
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var detailText: String!
        
    override func viewDidLoad() {
            super.viewDidLoad()
            
            self.descriptionLabel.text = detailText
    }
        
}


