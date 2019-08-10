//
//  NewsItem.swift
//  NewsAPI
//
//  Created by osama on 8/10/19.
//  Copyright © 2019 osama mohamed. All rights reserved.
//

import Foundation
class NewsItem
{
    public var newsPaper:String!
    public var title:String!
    public var content:String!
    public var author:String!
    public var date: String!
    public var imageUrl:String!
    
    init(dict : [String:Any]) {
        guard let newsPaper = dict["name"] as? String ,
        let title = dict["title"] as? String ,
        let content = dict["content"] as? String ,
        let author = dict["author"] as? String ,
        let date = dict["publishedAt"] as? String ,
        let imageUrl = dict["urlToImage"] as? String
        else{
            return
        }
        self.newsPaper = newsPaper
        self.title = title
        self.content = content
        self.author = author
        self.date = date
        self.imageUrl = imageUrl
        
    }
    
}
