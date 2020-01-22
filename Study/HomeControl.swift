//
//  HomeControl.swift
//  Study
//
//  Created by Pedro Furtado on 22/01/20.
//  Copyright © 2020 David Augusto. All rights reserved.
//

import Foundation
import UIKit

class listaDeAtividades: UIViewController {
    
    
    var atividades: [String] = [] {
        didSet{
            DispatchQueue.main.async {
                
            }
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
}
