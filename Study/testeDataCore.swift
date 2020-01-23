//
//  testeDataCore.swift
//  Study
//
//  Created by Pedro Furtado on 23/01/20.
//  Copyright © 2020 David Augusto. All rights reserved.
//

import Foundation
import CoreData
import UIKit

func createData() {
    
    guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {return}
    
    
    let context = appDelegate.persistentContainer.viewContext
           
    guard let userEntity = NSEntityDescription.entity(forEntityName: "Aluno", in: context) else { return }
    
    for i in 1...5{
        let user = NSManagedObject(entity: userEntity, insertInto: context)
        user.setValue("Arnaldo\(i)", forKeyPath: "nome")
        user.setValue("23/01/2020 \(i)", forKeyPath: "nascimento")
        user.setValue("eng. comp\(i)", forKeyPath: "curso")
        
    }
    
    do{
        
        try context.save()
        
    }catch let erro as NSError{
        print("erouuuuuu \(erro)")
        
        
    }
    
}


func retriveData(){
    
    guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {return}
    
    let context = appDelegate.persistentContainer.viewContext
           
    let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Aluno")
    
    do {
        let result = try context.fetch(fetchRequest)
        for data in result as! [NSManagedObject]{
            print(data.value(forKey: "nome") as! String)
            
        }
        
    
    } catch  {
        print(" eroo")
    }
    
}

