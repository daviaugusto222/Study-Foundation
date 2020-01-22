//
//  ViewController.swift
//  Study
//
//  Created by David Augusto on 22/01/20.
//  Copyright © 2020 David Augusto. All rights reserved.
//
import Foundation
import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

   
    @IBOutlet weak var tableView: UITableView!
    
    var atividades: [String] = ["estudar fisica","estudar poo","ensinar meu amigo","revisar quimica"]
       
    
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
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return atividades.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = atividades[indexPath.row]
        
        return cell
        
    }
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let nome: String = atividades[indexPath.row]
            self.performSegue(withIdentifier: "detalheDaAtividade", sender: nome)
    
    }

    
}
