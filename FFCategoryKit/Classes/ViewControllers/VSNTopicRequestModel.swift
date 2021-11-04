//
//  VSNTopicRequestModel.swift
//  Alamofire
//
//  Created by ytx on 2019/3/13.
//

import Foundation

public struct VoteTopicRequestModel: Convertable {
    let topicId: Int //话题id
    let isSupport: Bool //true:支持 false:反对
    
    public init(topicId: Int, isSupport: Bool) {
        self.topicId = topicId
        self.isSupport = isSupport
    }
}

public struct TopicPagableRequestModel: Convertable {
    let tid: Int //话题id
    let page: Int //第几页 默认1
    let limit: Int //每页数量 默认10
    
    public init(tid: Int, page: Int = 1, limit: Int = 10) {
        self.tid = tid
        self.page = page
        self.limit = limit
    }

}

public struct VSNUltronCommunityVideosByCategoryReq: Convertable {
    var id: Int
    var limit: Int?
    var page: Int?
    var timestamp: String?
    public init(_ id: Int, limit: Int? = 10, page: Int? = 1, timestamp: String?) {
        self.id = id
        self.limit = limit
        self.page = page
        self.timestamp = timestamp
    }
}

public struct VSNUltronCommunityTopicDetailReq: Convertable {
    var id: Int
    public init(_ id: Int) {
        self.id = id
    }
}

public struct VSNUltronCommunityTopicVideoReq: Convertable {
    var id: Int
    var limit: Int?
    var page: Int?
    public init(_ id: Int, limit: Int? = 10, page: Int? = 1) {
        self.id = id
        self.limit = limit
        self.page = page
    }
}

public struct VSNUltronFollowTopicReq: Convertable {
    var topicId: Int
    public init(_ topicId: Int) {
        self.topicId = topicId
    }
}

public struct VSNUltronFollowedTopicsReq: Convertable {
    var page: Int
    var limit: Int
    
    public init(_ page: Int = 0, limit: Int = 20) {
        self.page = page
        self.limit = limit
    }
}

public struct TopicPagableReq: Convertable {
    let page: Int //第几页 默认1
    let limit: Int //每页数量 默认10
    let type: Int? //类型

    public init(page: Int = 1, limit: Int = 10, type: Int? = nil) {
        self.page = page
        self.limit = limit
        self.type = type
    }
    
}

public struct StockCommentListReq: Convertable {
    let page: Int //第几页 默认1
    let limit: Int //每页数量 默认10
    let tagId: String //标签id
    let isBullet: Bool //是否为弹幕

    public init(page: Int = 1, limit: Int = 10, tagId: String, isBullet: Bool = false) {
        self.page = page
        self.limit = limit
        self.tagId = tagId
        self.isBullet = isBullet
    }
    
}
