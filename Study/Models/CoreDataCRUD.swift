//
//  CoreDataCRUD.swift
//  Study
//
//  Created by David Augusto on 24/01/20.
//  Copyright © 2020 David Augusto. All rights reserved.
//

import CoreData

extension NSObject {
    static var className: String {
        return String(describing: self)
    }
}

protocol CRUD {
    func save() -> Result<Self, Error>
    func delete()
    static func get(predicate: NSPredicate) -> Result<[Self], Error>
}

extension CRUD where Self: NSManagedObject {
    static var context: NSManagedObjectContext {
        return DataManager.shared.persistentContainer.viewContext
    }
    
    @discardableResult
    func save() -> Result<Self, Error> {
        do {
            try Self.context.save()
            return Result.success(self)
        } catch let error {
            return Result.failure(error)
        }
    }
    
    func delete() {
        Self.context.delete(self)
        try? Self.context.save()
    }
    
    static func get(predicate: NSPredicate = NSPredicate(value: true) ) -> Result<[Self], Error> {
        let fetchRequest = NSFetchRequest<Self>(entityName: Self.className)
        fetchRequest.predicate = predicate
        
        do {
            let result = try Self.context.fetch(fetchRequest)
            return Result.success(result)
        } catch let error {
            return Result.failure(error)
        }
    }
    
    
}

enum CoreDataErrors: Error {
    case couldNotCastToType
}
