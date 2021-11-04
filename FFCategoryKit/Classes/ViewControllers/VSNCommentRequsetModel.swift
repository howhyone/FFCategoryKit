//
//  VSNHomeReq.swift
//  Alamofire
//
//  Created by Chuan on 2018/12/11.
//

public struct VSNCommentSelectedReq: Convertable {
    var page: Int
    var limit: Int
    
    public init(page: Int = 1, limit: Int = 10) {
        self.page = page
        self.limit = limit
    }
}

public struct VSNCommentTopicReq: Convertable {
    var id: Int
    var page: Int
    var limit: Int
    
    public init(id: Int, page: Int = 1, limit: Int = 10) {
        self.id = id
        self.page = page
        self.limit = limit
    }
}
