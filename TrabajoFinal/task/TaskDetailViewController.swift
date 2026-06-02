//
//  TaskDetailViewController.swift
//  TrabajoFinal
//
//  Created by Raúl Prieto Prieto on 2/6/26.
//

import UIKit

class TaskDetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var completeButton: UIButton!
    
    @IBAction func deleteTaskTapped(_ sender: UIButton) { // https://developer.apple.com/documentation/uikit/uibutton
        onDelete?()
    }
    
    var taskTitle: String?
    var taskDescription: String?
    var taskCompleted: Bool?
    
    var onDelete: (() -> Void)? // https://docs.swift.org/swift-book/documentation/the-swift-programming-language/closures
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = taskTitle
        descriptionTextView.text = taskDescription
    }
}
