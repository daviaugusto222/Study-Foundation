//
//  Aluno+CoreDataProperties.swift
//  Study
//
//  Created by David Augusto on 24/01/20.
//  Copyright © 2020 David Augusto. All rights reserved.
//
//

import Foundation
import CoreData


extension Aluno {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Aluno> {
        return NSFetchRequest<Aluno>(entityName: "Aluno")
    }

    @NSManaged public var curso: String?
    @NSManaged public var nascimento: String?
    @NSManaged public var nome: String?

}

extension Aluno: CRUD {
    convenience init?(nome: String, nascimento: String, curso: String) {
        let context = DataManager.shared.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: Self.className, in: context)!
        self.init(entity: entity, insertInto: context)
        self.nome = nome
        self.nascimento = nascimento
        self.curso = curso
    
    }
}
