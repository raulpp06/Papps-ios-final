//
//  Task.swift
//  TrabajoFinal
//
//  Created by Raúl Prieto Prieto on 2/6/26.
//

import Foundation

class Task {
    
    var title: String
    var completed: Bool
    var description: String
    
    init(nombre: String, completed: Bool, description: String) {
        self.title = nombre
        self.completed = completed
        self.description = description
    }
}
