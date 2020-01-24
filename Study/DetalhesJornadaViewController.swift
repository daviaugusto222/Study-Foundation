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
    @IBOutlet weak var descricaoJornada: UILabel!
    @IBOutlet weak var concluirJornadaButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nomeJornada.text = jornadasArray[position].nome
        descricaoJornada.text = jornadasDescricaoArray[position]
    }
    
    @IBAction func buttonTapped(sender: AnyObject) {
        
        for (index, jornada) in jornadasArray.enumerated() {
            if jornada.nome == nomeJornada.text {
                jornadasArray[index].concluida = true
            }
        }
        
        self.navigationController?.popViewController(animated: true)
    }
    
}
