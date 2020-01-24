//
//  Jornada+CoreDataProperties.swift
//  Study
//
//  Created by David Augusto on 24/01/20.
//  Copyright © 2020 David Augusto. All rights reserved.
//
//

import Foundation
import CoreData


extension Jornada {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Jornada> {
        return NSFetchRequest<Jornada>(entityName: "Jornada")
    }

    @NSManaged public var concuido: Bool
    @NSManaged public var descricao: String?
    @NSManaged public var titulo: String?

}

extension Jornada: CRUD {
    convenience init?(titulo: String, descricao: String, concluido: Bool) {
        let context = DataManager.shared.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: Self.className, in: context)!
        self.init(entity: entity, insertInto: context)
        self.titulo = titulo
        self.descricao = descricao
        self.concuido = concluido
        
    }
}
