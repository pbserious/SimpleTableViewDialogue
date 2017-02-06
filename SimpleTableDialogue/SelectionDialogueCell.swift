//
//  SelectionDialogueCell.swift
//  SimpleTableDialogue
//
//  Created by Rattee Warriyawhutthiwat on 2/6/2560 BE.
//  Copyright © 2560 truecorp. All rights reserved.
//

import UIKit

class SelectionDialogueCell:UITableViewCell {
    @IBOutlet weak var title: UILabel?
    @IBOutlet weak var selectedIcon: UIImageView?
}

extension SelectionDialogueCell:DialogueCell {
    func setCellData(cellData:DialogueCellData) {
        title?.text = cellData.getTitle()
        selectedIcon?.isHidden = !cellData.isSelected()
    }

}
