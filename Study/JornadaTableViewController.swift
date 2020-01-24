//
//  JornadaTableViewController.swift
//  Study
//
//  Created by Jardel Alves on 22/01/20.
//  Copyright © 2020 David Augusto. All rights reserved.
//

import UIKit

struct JornadaStruct {
    let nome: String
    var concluida: Bool = false
}

var jornadasArray: [JornadaStruct] = [
    JornadaStruct(nome: "Beber água"),
    JornadaStruct(nome: "Alongar"),
    JornadaStruct(nome: "Fazer exercícios"),
    JornadaStruct(nome: "Aprender Pomodoro"),
    JornadaStruct(nome: "Aplicar em alguma cadeira"),
    JornadaStruct(nome: "Tirar 10 na prova"),
    JornadaStruct(nome: "Zerar a vida")
]

let jornadasDescricaoArray = ["Manter-se hidratado é sempre essencial para a sua saúde. O ideal é beber, pelo menos, 2 litros de água por dia.", "O próximo passo é fazer cuidar mais do corpo fazendo exercícios físicos. Porém, antes de fazer qualquer atividade, sempre bom alongar-se para evitar dores nos músculos.", "Exercícios físicos fazem bem para a saúde, não só por pura estética. Comece pegando leve, aumentando a carga cada vez que se acostumar com o ritmo.", "Pomodoro é uma técnica muito utilizada para estudos, e é uma excelente alternativa para focar nos estudos e conseguir um bom rendimento.", "Após tudo isso, agora teste você mesmo: utilize a técnica pomodoro para estudar para uma cadeira específica.", "Hora de colher os frutos do seu trabalho! Talvez você não tenha tirado o 10, mas perceba o quanto você melhorou até aqui.", "Eu meio que tô sem ideias pra botar como descrição daqui, então considere que você já é foda o suficiente e conquiste o mundo do jeito que você quiser, seja dominando o mundo ou apenas sendo rico. Ou morar debaixo da ponte, se é esse o seu objetivo." ]

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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.Jornadas.reloadData()
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
        
        let jornada = jornadasArray[indexPath.row]
        cell.textLabel!.text = jornada.nome
        cell.layer.cornerRadius = 5
        if jornada.concluida {
            cell.bgView.backgroundColor = .systemBlue
            cell.textLabel?.textColor = .white
        }

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        position = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
        
    }
}
