//
//  SubjectDetailViewController.swift
//  TrabajoFinal
//
//  Created by Raúl Prieto Prieto on 2/6/26.
//

import UIKit

class SubjectDetailViewController: UIViewController {

    @IBOutlet weak var subjectImage: UIImageView!
    @IBOutlet weak var subjectNameLabel: UILabel!
    @IBOutlet weak var subjectProffessorLabel: UILabel!
    @IBOutlet weak var subjectCreditsLabel: UILabel!
    
    var image: UIImage?
    var subjectName: String?
    var subjectProffessor: String?
    var subjectCredits: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let subjectCreditsString = if let subjectCredits {
            "\(String(subjectCredits))"
        } else {
            "0"
        }
        let proffesorReal = if let subjectProffessor {subjectProffessor} else {""}
        
        self.subjectImage!.image = image
        self.subjectNameLabel!.text = subjectName
        self.subjectProffessorLabel!.text = "Profesor: \(proffesorReal)"
        self.subjectCreditsLabel!.text = "Créditos: \(subjectCreditsString)"
    }
}
