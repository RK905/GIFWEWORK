//
//  ViewController.swift
//  GIFWEWORK
//
//  Created by Rayen Kamta on 8/27/17.
//  Copyright © 2017 Rayen Kamta. All rights reserved.
//

import UIKit
import ReactiveCocoa
import ReactiveSwift

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    var viewModel: PostTableViewModel = PostTableViewModel()

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self;
        self.tableView.dataSource = self;
        // Do any additional setup after loading the view, typically from a nib.
        
        // Bind Target to reload data
        self.tableView.reactive.reloadData <~ viewModel.signalReload

    }
    
    override func viewWillAppear(_ animated: Bool) {
        viewModel.request()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.receivedData.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "postCell", for: indexPath) as! PostTableCell
        
        cell.viewModel = viewModel.getPostCellViewModel(atIndex: indexPath.row)
        
        return cell
    }
    



}

