//
//  SimpleTableViewDialogue.swift
//  SimpleTableDialogue
//
//  Created by Rattee Warriyawhutthiwat on 2/6/2560 BE.
//  Copyright © 2560 truecorp. All rights reserved.
//

import UIKit
import SnapKit

class SimpleTableViewDialogue:UIViewController {
    
    @IBOutlet weak var dialogueView:UIView!
    @IBOutlet weak var dialogueHeader:UILabel!
    @IBOutlet weak var tableView:UITableView!
    var actionList = [(DialogueCellData,()->Void)]()
    var cellHeight = 44.0 {
        didSet {
            setUpView()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    
    func setUpView() {
        dialogueView.layer.cornerRadius = 5.0
        tableView.isScrollEnabled = false
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        self.tableView.register(UINib(nibName: "SettingsDialogueCell", bundle: nil), forCellReuseIdentifier: "DialogueCell")
        actionList.append((SettingsDialogueCellData(title: "Sound", subTitle: "Thai", image: #imageLiteral(resourceName: "ic_subtitle")), { print("eiei sound") }))
        actionList.append((SettingsDialogueCellData(title: "Subtitle", subTitle: "Off", image: #imageLiteral(resourceName: "ic_subtitle")), { print("eiei sub") }))
        actionList.append((SettingsDialogueCellData(title: "Bit rate", subTitle: "Auto", image: #imageLiteral(resourceName: "ic_subtitle")), { print("Bit rate sub") }))
        
        dialogueHeader.snp.updateConstraints { (make) in
            make.left.equalTo(26.0)
            make.top.equalTo(6.8)
        }
        tableView.snp.updateConstraints{ (make) in
            make.height.equalTo(44*actionList.count).priority(1000)
        }
    }
    
    @IBAction func closeDialoguePressed() {
        self.dismiss(animated: true, completion: nil)
    }
}

extension SimpleTableViewDialogue:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return actionList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DialogueCell", for: indexPath)
        if let cell = cell as? DialogueCell {
            let data = actionList[indexPath.row].0
            cell.setCellData(cellData: data)
        }
        return cell
    }
}

extension SimpleTableViewDialogue:UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let action = actionList[indexPath.row].1
        action()
    }
}
