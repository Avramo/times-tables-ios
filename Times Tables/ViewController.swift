//
//  ViewController.swift
//  Times Tables
//
//  Created by admin on 23/01/2020.
//  Copyright © 2020 AM Kirsch. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var table: UITableView!
    
    @IBOutlet weak var currentValue: UILabel!
    
    @IBAction func sliderAction(_ sender: Any) {
        currentValue.text = String(Int(slider.value))
        table.reloadData()
    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        cell.textLabel?.text = String((indexPath.row + 1) * Int(slider.value))
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

