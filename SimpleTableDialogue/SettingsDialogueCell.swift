//
//  VideoSettingDialogueCell.swift
//  SimpleTableDialogue
//
//  Created by Rattee Warriyawhutthiwat on 2/6/2560 BE.
//  Copyright © 2560 truecorp. All rights reserved.
//

import UIKit

class SettingsDialogueCell:UITableViewCell {
    @IBOutlet weak var bulletImage:UIImageView?
    @IBOutlet weak var title:UILabel?
    @IBOutlet weak var subTitle:UILabel?
}

extension SettingsDialogueCell:DialogueCell {
    func setCellData(cellData: DialogueCellData) {
        title?.text = cellData.getTitle()
        subTitle?.text = cellData.getDetail()
        bulletImage?.image = cellData.getImage()
    }
}
