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
    var cellNibName:String?
    var cellHeight = 44
    
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
        if let cellNibName = cellNibName {
            tableView.register(UINib(nibName: cellNibName, bundle: nil),
                               forCellReuseIdentifier: "DialogueCell")
        }
        
        dialogueHeader.snp.updateConstraints { (make) in
            make.left.equalTo(26.0)
            make.top.equalTo(6.8)
        }
        tableView.snp.updateConstraints{ (make) in
            make.height.equalTo(cellHeight*actionList.count).priority(1000)
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
