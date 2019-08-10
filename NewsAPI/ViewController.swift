//
//  ViewController.swift
//  NewsAPI
//
//  Created by osama on 8/10/19.
//  Copyright © 2019 osama mohamed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var ws = WebService()
        ws.searchNews(searchTerm: ""){
            newsItems in
            print(newsItems[0].content)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

