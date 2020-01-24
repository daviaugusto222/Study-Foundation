//
//  AtividadeExtension.swift
//  Study
//
//  Created by David Augusto on 24/01/20.
//  Copyright © 2020 David Augusto. All rights reserved.
//

import CoreData
import UIKit

extension Atividade: CRUD {
    convenience init?(nome: String, descricao: String, tags: String, data: Date) {
        let context = DataManager.shared.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: Self.className, in: context)!
        self.init(entity: entity, insertInto: context)
        self.nome = nome
        self.descricao = descricao
        self.tags = tags
        self.data = data
    }
    
    
    
}
