//
//  EditarPerfilViewController.swift
//  Study
//
//  Created by Arnaldo Aguiar on 23/01/20.
//  Copyright © 2020 David Augusto. All rights reserved.
//

import UIKit

class EditarPerfilViewController: UIViewController {

    var nomeCompleto : NSString = ""
    //var idade: Float = 0.0
    var curso : NSString = ""
    
    @IBOutlet weak var AlterarNome: UITextField!
    
    @IBOutlet weak var AlterarCurso: UITextField!
    
    @IBOutlet weak var AlterarDataNascimento: UIDatePicker!
    
    
    @IBOutlet weak var SalvarAlteracoes: UIButton!
    
    
    @IBOutlet weak var LimparCampos: UIButton!
    
    
    
    @IBAction func LimparCampos(_ sender: Any) {
        AlterarNome.text = nil
        AlterarCurso.text = nil
        //AletrarDadaNascimento.date = nil
    }
    
    func exibirAlerta(){
        let alerta = UIAlertController(title: "Alerta", message: "Preencha todos os campos", preferredStyle: UIAlertController.Style.alert);
    
        alerta.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil));
    
        self.present(alerta, animated: true, completion: nil);
    }
    
    
    @IBAction func SalvarAlteracoes(_ sender: Any) {
        guard let _ = self.AlterarNome.text, self.AlterarNome.text?.isEmpty==false else {
            exibirAlerta();
            return
        }

        guard let _ = self.AlterarCurso.text, self.AlterarCurso.text?.isEmpty==false else {
            exibirAlerta();
            return
        }


    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
