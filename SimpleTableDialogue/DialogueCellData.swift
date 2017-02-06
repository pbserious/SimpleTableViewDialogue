//
//  DialogueCellData.swift
//  SimpleTableDialogue
//
//  Created by Rattee Warriyawhutthiwat on 2/6/2560 BE.
//  Copyright © 2560 truecorp. All rights reserved.
//

import UIKit

protocol DialogueCellData {
    func getTitle() -> String
    func getDetail() -> String
    func getImage() -> UIImage?
    func isSelected() -> Bool
}

extension DialogueCellData {
    func getSubtitle() -> String {
        return ""
    }
    
    func isSelected() -> Bool {
        return false
    }
}
