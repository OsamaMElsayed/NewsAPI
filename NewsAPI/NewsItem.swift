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
    
    public var title:String!
    public var content:String!
    public var author:String!
    public var date: String!
    public var imageUrl:String!
    
    init(dict : [String:Any]) {
        
        
        if let title = dict["title"] as? String{
            self.title = title
        }
        if let content = dict["content"] as? String{
            self.content = content
        }
        if let author = dict["author"] as? String{
            self.author = author
        }
        if let date = dict["publishedAt"] as? String{
            self.date = date
        }
        if let image = dict["urlToImage"] as? String{
            self.imageUrl = image
        }
    }
}
