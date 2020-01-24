//
//  PerfilViewController.swift
//  Study
//
//  Created by Arnaldo Aguiar on 23/01/20.
//  Copyright © 2020 David Augusto. All rights reserved.
//

import UIKit

class PerfilViewController: UIViewController {

    var nomeCompleto: NSString?
    var idade : Float?
    var curso: NSString?
    
    @IBOutlet weak var CaixaFoto: UIImageView!
    
    @IBOutlet weak var CaixaNome: UILabel!
    
    @IBOutlet weak var CaixaCurso: UILabel!
    
    @IBOutlet weak var CaixaIdade: UILabel!
    
    @IBOutlet weak var perfilTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        CaixaFoto.layer.masksToBounds = true
        CaixaFoto.layer.cornerRadius = CaixaFoto.bounds.width / 2
        /*let sIdade = NSString(format: "%.0f", idade!)
        self.CaixaIdade.text = "\(sIdade) anos"
        
        self.CaixaNome.text = "\(nomeCompleto!)"
        
        self.CaixaCurso.text = "\(String(describing: curso))"
        */
        
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
