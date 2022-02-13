//
//  ViewController.swift
//  Table
//
//  Created by LrUCiA on 2022/02/11.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate {
    //UITableViewDelegate는 필수 채택 함수가 없음.
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
        // Do any additional setup after loading the view.
    }
   
}

extension ViewController: UITableViewDataSource {
    //UITableViewDataSource 필수 채택 함수.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "myCell")
        //UITableViewCell(style: , reuseIdentifier: ) == UITableViewCell(st-: , reuse-: ) init 생략가능
        cell.textLabel?.text = "\(indexPath.row)"
        cell.detailTextLabel?.text = indexPath.description
        cell.imageView?.image = UIImage(named: "swift.png")
        return cell
        
       // return UITableViewCell() //클래스 이름 뒤 '()'를 붙이면 인스턴스 생성
    
    }
    

}
