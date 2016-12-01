//
//  Post.swift
//  CampusEats
//
//  Created by Shawn Kim on 11/23/16.
//  Copyright © 2016 campuseats. All rights reserved.
//

import Foundation

class Post {
    var title: String
    var description: String
    var start: String
    var end: String
    var author: String
    var location: String
    var imageLocation: String
    
    init() {
        title = ""
        description = ""
        start = ""
        end = ""
        author = ""
        location = ""
        imageLocation = ""
    }
    
    init(title: String, description: String, start: String, end: String, author: String, location: String, imageLocation: String) {
        self.title = title
        self.description = description
        self.start = start
        self.end = end
        self.author = author
        self.location = location
        self.imageLocation = imageLocation
    }
}
