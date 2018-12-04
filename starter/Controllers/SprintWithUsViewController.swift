//
//  SprintWithUsViewController.swift
//  starter
//
//  Created by Amir Shayegh on 2018-12-03.
//  Copyright © 2018 shayegh.ca. All rights reserved.
//

import UIKit

class SprintWithUsViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension SprintWithUsViewController:  UITableViewDelegate, UITableViewDataSource {
    func setUpTable() {
        if self.tableView == nil { return }
        tableView.delegate = self
        tableView.dataSource = self
        registerCell(name: "<#cellName#>")
    }

    func registerCell(name: String) {
        let nib = UINib(nibName: name, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: name)
    }

    func get<#cellName#>(indexPath: IndexPath) -> <#UITableViewCell#> {
        return tableView.dequeueReusableCell(withIdentifier: "<#cellName#>", for: indexPath) as! <#UITableViewCell#>
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    }
}

