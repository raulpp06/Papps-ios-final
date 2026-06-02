//
//  SubjectsViewCell.swift
//  TrabajoFinal
//
//  Created by Raúl Prieto Prieto on 2/6/26.
//

import UIKit

class SubjectsTableViewCell: UITableViewCell {

    @IBOutlet weak var subjectImage: UIImageView!
    @IBOutlet weak var subjectName: UILabel!
    @IBOutlet weak var subjectProffessor: UILabel!
    @IBOutlet weak var subjectCredits: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
