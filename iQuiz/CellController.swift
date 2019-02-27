//
//  CellController.swift
//  iQuiz
//
//  Created by Anukriti Goyal on 2/26/19.
//  Copyright © 2019 ischoolnikki. All rights reserved.
//

import UIKit

class TableCellViewController : UITableViewCell {
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var labelName : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
