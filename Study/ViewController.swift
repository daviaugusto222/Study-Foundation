//
//  ViewController.swift
//  Study
//
//  Created by David Augusto on 22/01/20.
//  Copyright © 2020 David Augusto. All rights reserved.
//
import Foundation
import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

   
    @IBOutlet weak var tableView: UITableView!
   let cellSpacingHeight: CGFloat = 5
    
    var atividades: [String] = ["Estudar fisica","Estudar poo","Ensinar meu amigo","Revisar quimica"]
       
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tableView.delegate = self
        self.tableView.dataSource = self
       
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destiny = segue.destination as? DetalheAtividadeViewController,
            segue.identifier == "detalheDaAtividade",
            let sendedNome = sender as? String{
                destiny.detailText = "\(sendedNome) veio hoje"
            
            }
        if let destinity = segue.destination as? JornadaTableViewController {
            destinity.selected = 0
        }
        
    }
    
    @IBAction func buttonAction(_ sender: UIButton) {
        if let controller = self.tabBarController?.viewControllers?[1] as? JornadaTableViewController {
            controller.selected = 0
            self.tabBarController?.selectedIndex = 1

        }
    
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let result = Atividade.get()
        switch result {
        case .success(let atv):
           
            return atv.count
           
           
        default:
            print("error")
        }
        return 0
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Atividades", for: indexPath) as! AtividadeCell
        cell.layer.cornerRadius = 7
        let result = Atividade.get()
                 switch result {
                 case .success(let atv):
                    
                    cell.nomeDaAtividade.text = atv[indexPath.row].nome
                    cell.data.text = "27"
                    cell.descricao.text = atv[indexPath.row].descricao
                    cell.mes.text = "JAN"
                    
                    
                 default:
                     print("error")
                 }
        
        
        return cell
        
    }
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let nome: String = atividades[indexPath.row]
            self.performSegue(withIdentifier: "detalheDaAtividade", sender: nome)
    
    }
    
    // Set the spacing between sections
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return cellSpacingHeight
    }

  
}
