//
//  ViewController.swift
//  SimpleTableDialogue
//
//  Created by Rattee Warriyawhutthiwat on 2/6/2560 BE.
//  Copyright © 2560 truecorp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SettingsSegue" {
            let vc = segue.destination as! SimpleTableViewDialogue
            vc.title = "Settings"
            vc.cellNibName = "SettingsDialogueCell"
            vc.addAction(action:((SettingsDialogueCellData(title: "Sound", subTitle: "Thai", image: #imageLiteral(resourceName: "ic_subtitle")), { print("eiei sound") })))
            vc.addAction(action:((SettingsDialogueCellData(title: "Subtitle", subTitle: "Off", image: #imageLiteral(resourceName: "ic_subtitle")), { print("eiei sub") })))
            vc.addAction(action:((SettingsDialogueCellData(title: "Bit rate", subTitle: "Auto", image: #imageLiteral(resourceName: "ic_subtitle")), { print("Bit rate sub") })))
        } else if segue.identifier == "SelectionSegue" {
            let vc = segue.destination as! SimpleTableViewDialogue
            vc.title = "Subtitle"
            vc.cellNibName = "SelectionDialogueCell"
            vc.addAction(action:((SelectionDialogueCellData(title: "Off", isSelected: true), {
                print("Off Eiei")
            })))
            vc.addAction(action:((SelectionDialogueCellData(title: "Thai", isSelected: false),{
                print("Thai eiei")
            })))
            vc.addAction(action:((SelectionDialogueCellData(title: "English", isSelected: false),{
                print("English eiei")
            })))
        }
    }
}

