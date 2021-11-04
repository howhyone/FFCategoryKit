//
//  VSNRequsetModel.swift
//  Alamofire
//
//  Created by ytx on 2019/3/13.
//

import Foundation

public struct PagableRequestModel: Convertable {
    let page: Int //第几页 默认1
    let limit: Int //每页数量 默认10
    
    public init(page: Int = 1, limit: Int = 10) {
        self.page = page
        self.limit = limit
    }
}

public struct RecommendStockCategoryReq: Convertable {
    let type: String //类型
    public init(type: String) {
        self.type = type
    }
}

public struct VSNUltronVideosByInfoFlowReq: Convertable {
    var id: Int
    var categoryId: Int?
    var limit: Int?
    var page: Int?
    var timestamp: TimeInterval?
    var showRecommendAuthors: Int?
    var dataType: String?
    var exceptAdIds: [Int]?
    
    public init(id: Int, categoryId: Int?, limit: Int? = 10, page: Int? = 1, timestamp: TimeInterval?, showRecommendAuthors: Int? = 0, dataType: String?, exceptAdIds: [Int]?) {
        self.id = id
        self.categoryId = categoryId
        self.limit = limit
        self.page = page
        self.timestamp = timestamp
        self.showRecommendAuthors = showRecommendAuthors
        self.dataType = dataType
        self.exceptAdIds = exceptAdIds
    }
}

public struct PointsMallReusetModel: Convertable {
    let credits: Int
    let dbredirect: String = "https%3A%2F%2Factivity.m.duiba.com.cn%2Fsignactivity%2Findex%3Fid%3D90%26signOptId%3D8811%26dpm%3D63424.41.1.0%26dcm%3D216.90.51.0"
    public init(credits: Int = 0) {
        self.credits = credits
    }
}
