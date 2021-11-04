//
//  NewUltronRequestModel.swift
//  ActiveLabel
//
//  Created by ytx on 2020/5/22.
//

import Foundation

public struct FissionHelpReq: Convertable {
    
    public enum Content: String, Codable {
        case article
        case video
    }
    
    public var sourceId: Int?
    public var type: Content //会话id
    public var targetId: String? //用于分页

    public init(sourceId: Int?, type: Content, targetId: String?) {
        self.sourceId = sourceId
        self.type = type
        self.targetId = targetId
    }
}

public struct FissionContentReq: Convertable {
    
    public var sourceId: Int?
    public var type: FissionHelpReq.Content //会话id

    public init(sourceId: Int?, type: FissionHelpReq.Content) {
        self.sourceId = sourceId
        self.type = type
    }
}

public struct AuthorRankingListReq: Convertable {
    
    public enum `Type`: String, Codable {
        case dayHot = "DAY_HOT"
    }

    public var type: Type?

    public init(type: Type) {
        self.type = type
    }
}

public struct GoodsRateReq: Convertable {
    
    public var star: Int? // 打分
    public var content: RatingContent? //{"text": "zzzzz", "tags": ["tag","tag2"]}
    public var targetType: Int? // 0 付费专辑 7 付费圈子 8 付费直播 11 系列直播
    public var targetId: Int
    
    public init(star: Int?, tags: [String]?, text: String?, targetType: Int?, targetId: Int) {
        self.star = star
        self.content = RatingContent(tags: tags, text: text)
        self.targetType = targetType
        self.targetId = targetId
    }

}

public class RatingBaseReq: Convertable {
    
    public var targetType: Int? // 0 付费专辑 7 付费圈子 8 付费直播 11 系列直播
    public var targetId: Int?
    
    public init(targetType: Int?, targetId: Int?) {
        self.targetType = targetType
        self.targetId = targetId
    }

}

public struct RatingContent: Convertable {
    
    public var tags: [String]?
    public var text: String?

    public init(tags: [String]?, text: String?) {
        self.tags = tags
        self.text = text
    }
}

public class RatingPagableReq: Convertable {
    
    public var page: Int? //第几页 默认1
    public var limit: Int? //每页数量 默认10
    
    public var targetType: Int? // 0 付费专辑 7 付费圈子 8 付费直播 11 系列直播
    public var targetId: Int?
    
    public init(page: Int?, limit: Int?, targetType: Int?, targetId: Int?) {
        self.targetType = targetType
        self.targetId = targetId
        self.page = page
        self.limit = limit
    }
    
}
