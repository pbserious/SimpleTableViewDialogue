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
    func isChecked() -> Bool
}

extension DialogueCellData {
    func getDetail() -> String {
        return ""
    }
    
    func isChecked() -> Bool {
        return false
    }
    
    func getImage() -> UIImage? {
        return nil
    }
}
