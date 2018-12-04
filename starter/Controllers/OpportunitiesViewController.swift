//
//  OpportunitiesViewController.swift
//  starter
//
//  Created by Amir Shayegh on 2018-12-03.
//  Copyright © 2018 shayegh.ca. All rights reserved.
//

import UIKit

class OpportunitiesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension OpportunitiesViewController:  UITableViewDelegate, UITableViewDataSource {
    func setUpTable() {
        if self.tableView == nil { return }
        tableView.delegate = self
        tableView.dataSource = self
        registerCell(name: "OpportunityTableViewCell")
    }

    func registerCell(name: String) {
        let nib = UINib(nibName: name, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: name)
    }

    func getOpportunity(indexPath: IndexPath) -> OpportunityTableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "OpportunityTableViewCell", for: indexPath) as! OpportunityTableViewCell
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    }
}
