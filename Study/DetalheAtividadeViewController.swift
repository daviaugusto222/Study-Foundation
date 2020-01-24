//
//  DetalheAtividadeViewController.swift
//  Study
//
//  Created by Pedro Furtado on 22/01/20.
//  Copyright © 2020 David Augusto. All rights reserved.
//

import UIKit

class DetalheAtividadeViewController: UIViewController {

    @IBOutlet weak var nomeAtividade: UILabel!
    @IBOutlet weak var tags: UILabel!
    @IBOutlet weak var dataInicio: UILabel!
    @IBOutlet weak var dataPrevista: UILabel!
    @IBOutlet weak var descricao: UILabel!
    
    var atividade: Atividade?
            
    override func viewDidLoad() {
        
            super.viewDidLoad()
            
//            self.nomeAtividade.text = detailText
    }
    override func viewWillAppear(_ animated: Bool) {
        if let atividade = self.atividade {
            self.nomeAtividade.text = atividade.nome
            self.descricao.text = atividade.descricao
            self.tags.text = atividade.tags
        }
    }
        
}


