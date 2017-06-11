//
//  CompleteViewController.swift
//  Doit
//
//  Created by Harris Novljakovic on 2017-06-11.
//  Copyright © 2017 Harris Novljakovic. All rights reserved.
//

import UIKit

class CompleteViewController: UIViewController {
    
    @IBOutlet weak var taskLable: UILabel!
    
    var task = Task()
    var previousVC = TasksViewController()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if task.important{
            taskLable.text = "❗️\(task.name)"
        }   else{
            taskLable.text = task.name
        }
        
    }

    @IBAction func completeTapped(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)

    }
    
}
