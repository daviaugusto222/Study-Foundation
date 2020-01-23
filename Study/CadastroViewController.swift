//
//  CadastroViewController.swift
//  Study
//
//  Created by Pedro Furtado on 23/01/20.
//  Copyright © 2020 David Augusto. All rights reserved.
//

import UIKit
import CoreData
var ativ: [NSManagedObject] = []

class CadastroViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var nomeAtividade: UITextField!
    @IBOutlet weak var tags: UITextField!
    @IBOutlet weak var descricao: UITextField!
    @IBOutlet weak var Data: UIDatePicker!
    
    
    @IBAction func Cadastro(_ sender: Any) {
        
        
    }
    /*
    // MARK: - Navigation
     
     
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
