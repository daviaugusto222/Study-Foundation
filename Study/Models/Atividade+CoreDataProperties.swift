//
//  Atividade+CoreDataProperties.swift
//  Study
//
//  Created by David Augusto on 24/01/20.
//  Copyright © 2020 David Augusto. All rights reserved.
//
//

import Foundation
import CoreData


extension Atividade {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Atividade> {
        return NSFetchRequest<Atividade>(entityName: "Atividade")
    }

    @NSManaged public var data: Date?
    @NSManaged public var descricao: String?
    @NSManaged public var nome: String?
    @NSManaged public var tags: String?

}
