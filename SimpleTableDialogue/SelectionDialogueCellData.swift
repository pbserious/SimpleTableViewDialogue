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

extension SelectionDialogueCell:DialogueCellData {
    func getTitle() -> String {
        return title
    }
    
    func isSelected() -> Bool {
        return isSelected
    }
}
