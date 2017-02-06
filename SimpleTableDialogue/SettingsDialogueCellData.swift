//
//  SimpleTableViewDialogueData.swift
//  SimpleTableDialogue
//
//  Created by Rattee Warriyawhutthiwat on 2/6/2560 BE.
//  Copyright © 2560 truecorp. All rights reserved.
//

import UIKit

struct SettingsDialogueCellData {
    let title:String
    let subTitle:String?
    let image:UIImage?
}

extension SettingsDialogueCellData:DialogueCellData {
    
    func getTitle() -> String {
        return title
    }
    func getDetail() -> String {
        if let subTitle = subTitle {
            return subTitle
        }
        return ""
    }
    func getImage() -> UIImage? {
        if let image = image {
            return image
        }
        return nil
    }
}

