//
//  TasksTableViewController.swift
//  TrabajoFinal
//
//  Created by Raúl Prieto Prieto on 2/6/26.
//

import UIKit

class TasksTableViewController: UITableViewController {
    
    var tasks = [Task]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let task1 = Task(
            nombre: "Exámen Papps",
            completed: false,
            description: "Examen de la asignatura de Programación de aplicaciones que se realizará el Martes 2 de Junio de 2026."
        )

        let task2 = Task(
            nombre: "Entrega proyecto iOS",
            completed: false,
            description: "Subir la entrega final del proyecto de iOS antes del martes. Incluye conceptos vistos en clase."
        )

        let task3 = Task(
            nombre: "Práctica de UIKit",
            completed: true,
            description: "Completar ejercicios de UITableView, segues y custom cells."
        )

        let task4 = Task(
            nombre: "Revisar apuntes de BD",
            completed: false,
            description: "Repasar diagramas entidad-relación y consultas SQL básicas para el examen."
        )

        tasks = [task1, task2, task3, task4]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        let selectedRow = tableView.indexPathForSelectedRow!.row

        let detailVC = segue.destination as! TaskDetailViewController

        let task = tasks[selectedRow]

        detailVC.taskTitle = task.title
        detailVC.taskDescription = task.description

        detailVC.onDelete = { [weak self] /* como el shared ptr en cpp https://docs.swift.org/swift-book/documentation/the-swift-programming-language/automaticreferencecounting */ in // como las lambdas de kotlin https://docs.swift.org/swift-book/documentation/the-swift-programming-language/closures
            guard let self = self else { return }

            self.tasks.remove(at: selectedRow)
            self.tableView.deleteRows(at: [IndexPath(row: selectedRow, section: 0)], with: .automatic)

            self.navigationController?.popViewController(animated: true)
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "TaskToDetails", sender: self)
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "taskIdentifier", for: indexPath) as! TasksTableViewCell
        
        cell.taskTitle.text = tasks[indexPath.row].title
        cell.taskDescription.text = tasks[indexPath.row].description
        
        let task = tasks[indexPath.row]
        cell.onDeleteTapped = { [weak self] /* como el shared ptr en cpp https://docs.swift.org/swift-book/documentation/the-swift-programming-language/automaticreferencecounting */ in // como las lambdas de kotlin https://docs.swift.org/swift-book/documentation/the-swift-programming-language/closures
            guard let self = self else { return }

            if let index = self.tasks.firstIndex(where: { origTask in origTask.title == task.title }) {
                    self.tasks.remove(at: index)
                    self.tableView.deleteRows(at: [IndexPath(row: index, section: 0)], with: .automatic)
                }
        }
        
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 165
    }
}
