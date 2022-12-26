//
//  ViewController.swift
//  TableViewEx4_Section
//
//  Created by runnysun on 2022/10/13.
//

import UIKit

class ViewController: UIViewController {
    let twice = ["사나", "나연", "쯔위", "미나", "지효", "채영", "다현", "정연", "모모"]
        let twiceImages = ["twice1","twice2","twice3","twice4","twice5","twice6","twice7","twice8","twice9"]
        let bts = ["RM" , "진", "슈가", "제이홉", "지민", "뷔", "정국" ]
        let btsImages = ["bts1" , "bts2", "bts3", "bts4", "bts5", "bts6", "bts7" ]
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
    }


}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    func tableView(_ tableview: UITableView, numberOfRowInSection section: Int) -> Int{
        if section == 0 {
            return twice.count
        }else{
            return bts.count
        }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        if indexPath.section == 0 {
            content.text = twice[indexPath.row]
            content.image = UIImage(named: twiceImages[indexPath.row])
        } else{
            content.text = bts[indexPath.row]
            content.image = UIImage(named: btsImages[indexPath.row])
        }
        content.text = twice[indexPath.row]
        content.image = UIImage(named:twiceImages[indexPath.row])
        content.imageProperties.maximumSize =
        CGSize(width: 100, height: 80)
        
        cell.contentConfiguration = content
        return cell
    }
        func tableView(_ tableview:UITableView, titleForHeaderInSection section: Int ) -> String? {
            if section == 0{
                return "Twice "
            }else{
                return "BTS"
            }
        }
        func tableView(_ tableView: UITableView, titleFooterInSection Section: Int) -> String
        if section == 0 {
            return "Twice Footer"
        }else{
            return "BTS Footer"
        }
}
    extension ViewController: UITableViewDelegate {
        func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
            let label = UILabel()
            label.text = "Group \(key)"
            label.textAlignment = .center
            label.font = .systemFont(ofSize: 30, weight: .bold)
            label.backgroundColor = .lightGray
            return label
        }

    
}
