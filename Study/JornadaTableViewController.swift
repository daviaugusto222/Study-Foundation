//
//  JornadaTableViewController.swift
//  Study
//
//  Created by Jardel Alves on 22/01/20.
//  Copyright © 2020 David Augusto. All rights reserved.
//

import UIKit

let jornadasArray = ["Beber água", "Alongar", "Fazer exercícios", "Aprender pomodoro", "Aplicar em alguma cadeira", "Tirar 10 na prova", "Zerar a vida"]

var position = 0

class JornadaTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var Jornadas: UITableView!
    
    var selected: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Jornadas.dataSource = self
        Jornadas.delegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if let selected = selected {
            position = selected
            performSegue(withIdentifier: "segue", sender: self)
            self.selected = nil
        }
    }

    // MARK: - Table view data source

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jornadasArray.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Jornadas", for: indexPath) as! JornadaCell
        
        cell.textLabel!.text = jornadasArray[indexPath.row]
        cell.layer.cornerRadius = 5

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        position = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
}
