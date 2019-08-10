//
//  ViewController.swift
//  NewsAPI
//
//  Created by osama on 8/10/19.
//  Copyright © 2019 osama mohamed. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var newsItems:[NewsItem]!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (newsItems == nil ){ return 0}
        return newsItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = newsItems[indexPath.row].title
        return cell!
    }
    
    var ws: WebService!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
          ws = WebService()
        ws.searchNews(searchTerm: ""){
            newsItems in
            self.newsItems = newsItems
            DispatchQueue.main.async{
            self.tableView.reloadData()
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

