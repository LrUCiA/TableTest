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
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: "myCell")
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
        
       // return UITableViewCell() //클래스 이름 뒤 '()'를 붙이면 인스턴스 생성
    
    }
    

}
