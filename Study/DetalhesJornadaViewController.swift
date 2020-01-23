//
//  DetalhesJornadaViewController.swift
//  Study
//
//  Created by Jardel Alves on 23/01/20.
//  Copyright © 2020 David Augusto. All rights reserved.
//

import UIKit

class DetalhesJornadaViewController: UIViewController {
    @IBOutlet weak var nomeJornada: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nomeJornada.text = jornadasArray[position]
    }
}
