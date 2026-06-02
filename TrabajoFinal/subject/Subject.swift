//
//  Subject.swift
//  TrabajoFinal
//
//  Created by Raúl Prieto Prieto on 2/6/26.
//

import UIKit

class Subject {
    
    let name: String
    let proffessorName: String
    let credits: Int
    let image: UIImage
    
    init(name: String, proffessorName: String, credits: Int, image: UIImage) {
        self.name = name
        self.proffessorName = proffessorName
        self.credits = credits
        self.image = image
    }
}
