//
//  ViewController.swift
//  headlines
//
//  Created by Skylar Lee Burfield on 4/16/20.
//  Copyright © 2020 Skylar Lee Burfield. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
 {
    
    @IBOutlet weak var theNews: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productionItems.count
    }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell")
        cell?.textLabel?.text = productionItems[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selection = productionItems[indexPath.row]
        if (selection == "Creative Director") {
            performSegue(withIdentifier: "creativedirectorsegue", sender: self)
        }
        else if (selection == "Photographer") {
            performSegue(withIdentifier: "photographersegue", sender: self)
        }
        else if (selection == "Stylist") {
            performSegue(withIdentifier: "stylistsegue", sender: self)
        }
        else if (selection == "Model") {
            performSegue(withIdentifier: "modelsegue", sender: self)
        }
        else if (selection == "MUA") {
                   performSegue(withIdentifier: "muasegue", sender: self)
               }
    }
    
    
    
    
    
    
    //test array of headlines
    var productionItems = ["Creative Director", "Photographer", "Stylist", "Model", "MUA"]


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
  theNews.delegate = self
  theNews.dataSource = self
        }

    }




