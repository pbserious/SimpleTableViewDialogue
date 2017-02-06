//
//  SelectionDialogueCellData.swift
//  SimpleTableDialogue
//
//  Created by Rattee Warriyawhutthiwat on 2/6/2560 BE.
//  Copyright © 2560 truecorp. All rights reserved.
//

import Foundation

struct SelectionDialogueCellData {
    let title:String
    let isSelected:Bool
}

extension SelectionDialogueCellData:DialogueCellData {
    func getTitle() -> String {
        return title
    }
    
    func isChecked() -> Bool {
        return isSelected
    }
}
