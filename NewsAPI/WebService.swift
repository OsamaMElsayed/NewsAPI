//
//  WebService.swift
//  NewsAPI
//
//  Created by osama on 8/10/19.
//  Copyright © 2019 osama mohamed. All rights reserved.
//

import Foundation
class WebService{
    func searchNews(searchTerm query: String, completion: @escaping ([NewsItem]) -> Void){
        let url:URL? = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=1e831f5abe0a42f29edece92e68f89fe")
        if let url = url {
            URLSession.shared.dataTask(with: url){
                data, _ , _ in
                let json = try? JSONSerialization.jsonObject(with: data!, options: []) as! [String:Any]
                
                let articles = json!["articles"] as! [Any]
                
                var newsList = [[String:Any]]()
                for art in articles{
                    let a = art as! [String:Any]
                    
                    newsList.append(a)
                }
                let result = newsList.compactMap(NewsItem.init)
                completion(result)
            }.resume()
        }
        
    }
}
