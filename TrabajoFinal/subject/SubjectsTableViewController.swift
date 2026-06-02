//
//  ViewController.swift
//  TrabajoFinal
//
//  Created by Raúl Prieto Prieto on 1/6/26.
//

import UIKit

class SubjectsTableViewController: UITableViewController {
    
    var subjects = [Subject]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let subject1 = Subject(name: "Programación de aplicaciones", proffessorName: "Luis Rollón Gordo", credits: 6, image: UIImage(named: "papps")!)
        let subject2 = Subject(name: "Programación", proffessorName: "Rubén Martín García", credits: 6, image: UIImage(named: "java")!)
        let subject3 = Subject(name: "Sistemas Operativos", proffessorName: "Alberto Pedrero Esteban", credits: 6, image: UIImage(named: "ssoo")!)
        let subject4 = Subject(name: "Sistemas de Bases de Datos I", proffessorName: "Vidal Alonso Secades", credits: 6, image: UIImage(named: "ssbbdd")!)
        
        subjects = [subject1, subject2, subject3, subject4]
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let selectedRow = tableView.indexPathForSelectedRow!.row
        
        let detailVC = segue.destination as! SubjectDetailViewController
        
        detailVC.subjectName = subjects[selectedRow].name
        detailVC.subjectProffessor = subjects[selectedRow].proffessorName
        detailVC.subjectCredits = subjects[selectedRow].credits
        detailVC.image = subjects[selectedRow].image
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "SubjectToDetails", sender: self)
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return subjects.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "subjectIdentifier", for: indexPath) as! SubjectsTableViewCell
        
        cell.subjectName.text = subjects[indexPath.row].name
        cell.subjectProffessor.text = "Profesor: \(subjects[indexPath.row].proffessorName)"
        cell.subjectCredits.text = "Créditos: \(subjects[indexPath.row].credits)"
        cell.subjectImage.image = subjects[indexPath.row].image
        
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 165
    }
}

