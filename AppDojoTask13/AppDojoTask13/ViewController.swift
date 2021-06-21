//
//  ViewController.swift
//  AppDojoTask13
//
//  Created by Naoyuki Kan on 2021/06/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let tableItems: [Dictionary<String, Any>] = [
        ["fruit": "りんご", "check": false],
         ["fruit":"みかん", "check":true],
        ["fruit":"バナナ", "check":false],
        ["fruit":"パイナップル", "check":true]
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView,
               numberOfRowsInSection section: Int) -> Int {
        return tableItems.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomViewCell

        guard let label = tableItems[indexPath.row]["fruit"] as? String else { return cell }
        guard let check =  tableItems[indexPath.row]["check"] as? Bool else { return cell }

        cell.configuration(label: label, check: check)
        
        return cell
    }
}
