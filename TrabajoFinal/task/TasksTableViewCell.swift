//
//  TasksTableViewCell.swift
//  TrabajoFinal
//
//  Created by Raúl Prieto Prieto on 2/6/26.
//

import UIKit

class TasksTableViewCell: UITableViewCell {
    @IBOutlet weak var taskTitle: UILabel!
    @IBOutlet weak var taskDescription: UITextView!
    @IBOutlet weak var taskCompleteButton: UIButton!
    
    var onDeleteTapped: (() -> Void)? // https://docs.swift.org/swift-book/documentation/the-swift-programming-language/closures

    @IBAction func deleteTapped(_ sender: UIButton) { // https://developer.apple.com/documentation/uikit/uibutton
        onDeleteTapped?()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
