//
//  JornadaTableViewController.swift
//  Study
//
//  Created by Jardel Alves on 22/01/20.
//  Copyright © 2020 David Augusto. All rights reserved.
//

import UIKit

class JornadaTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var Jornadas: UITableView!
    
    let jornadasArray = ["Beber água", "Alongar", "Fazer exercícios"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Jornadas.dataSource = self
        Jornadas.delegate = self
    }

    // MARK: - Table view data source

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jornadasArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Jornadas", for: indexPath)
        
        cell.textLabel!.text = jornadasArray[indexPath.row]

        return cell
    }
}
