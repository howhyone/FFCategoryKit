//
//  VSNLiveRequestModel.swift
//  Alamofire
//
//  Created by Chuan on 2018/12/4.
//

public struct VSNUltronLiveRoomDetailReq: Convertable {
    var roomId: Int
    var limit: Int // 默认10
    public init(roomId: Int, limit: Int = 10) {
        self.roomId = roomId
        self.limit = limit
    }
}

public struct VSNUltronLiveRoomDetailInfoReq: Convertable {
    var roomId: Int
    var tapeId: Int?
    public init(roomId: Int, _ tapeId: Int? = nil) {
        self.roomId = roomId
        self.tapeId = tapeId
    }
}

public struct VSNUltronSendLiveCommentReq: Convertable {
    var id: Int
    var content: VSNUltronCommentAddContentObj
    var paidLiveId: Int?
    var paidLiveTitle: String?
    public init(id: Int, content: VSNUltronCommentAddContentObj, paidLiveId: Int? = nil, paidLiveTitle: String? = nil) {
        self.id = id
        self.content = content
        self.paidLiveId = paidLiveId
        self.paidLiveTitle = paidLiveTitle
    }
}

public struct VSNUltronsendLiveFollowsReq: Convertable {
    var followId: Int
    var flag: Bool
    public init(followId: Int, flag: Bool) {
        self.followId = followId
        self.flag = flag
    }
}

public struct VSNUltronLiveHallReq: Convertable {
    var id: Int
    public init(id: Int) {
        self.id = id
    }
}

public struct VSNUltronLiveColumnReq: Convertable {
    var id: Int
    var page: Int
    var limit: Int // 默认10
    public init(id: Int, _ limit: Int = 10, page: Int = 1) {
        self.id = id
        self.limit = limit
        self.page = page
    }
}

public struct VSNUltronLiveFollow: Convertable {
    var id: Int
    var flag: Bool
    public init(id: Int, flag: Bool) {
        self.id = id
        self.flag = flag
    }
}

public struct VSNUltronLivesendBatchLike: Convertable {
    var id: Int
    var count: Int
    public init(id: Int, count: Int) {
        self.id = id
        self.count = count
    }
}

public struct VSNUltronLiveRoomReq: Convertable {
    var id: Int
    var page: Int
    var limit: Int // 默认10
    public init(id: Int, page: Int, limit: Int = 10) {
        self.id = id
        self.page = page
        self.limit = limit
    }
}

public struct VSNUltronLiveColumnDetail: Convertable {
    var cid: Int
    var page: Int
    var limit: Int // 默认10
    public init(cid: Int, page: Int, limit: Int = 10) {
        self.cid = cid
        self.page = page
        self.limit = limit
    }
}

public struct VSNUltronLiveAllAuthorListReq: Convertable {
    var page: Int // 默认1
    var limit: Int // 默认10
    public init(page: Int = 1, limit: Int = 10) {
        self.page = page
        self.limit = limit
    }
}

public struct VSNUltronVideosByFollowedReq: Convertable {
    var limit: Int?
    var page: Int?
    
    public init(_ limit: Int? = 10, _ page: Int? = 1) {
        self.limit = limit
        self.page = page
    }
}

public struct VSNUltronVideosByFollowedInfoFlowReq: Convertable {
    var limit: Int
    var timestamp: Int?
    var exceptAdIds: [Int]?
    public init(limit: Int = 10, timestamp: Int?, exceptAdIds: [Int]?) {
        self.limit = limit
        self.timestamp = timestamp
        self.exceptAdIds = exceptAdIds
    }
}

public struct VSNUltronLiveShareRoom: Convertable {
    var vid: Int
    public init(vid: Int) {
        self.vid = vid
    }
}

public struct VSNUltronLiveChestStatusReq: Convertable {
    var level: Int
    public init(level: Int) {
        self.level = level
    }
}

public struct VSNUltronLiveOpenChestReq: Convertable {
    var level: Int
    var roomId: Int
    public init(level: Int, roomId: Int) {
        self.level = level
        self.roomId = roomId
    }
}

public struct VSNUltronLiveRoomsByCategoryReq: Convertable {
    var id: Int
    var page: Int?
    var limit: Int?
    
    public init(id: Int, page: Int? = 1, limit: Int? = 10) {
        self.id = id
        self.limit = limit
        self.page = page
    }
}

public struct VSNUltronLiveFansRankingReq: Convertable {
    var id: Int
    var type: String?

    public init(id: Int, type: String) {
        self.id = id
        self.type = type
    }
}

public struct VSNUltronActivityFansRankingReq: Convertable {
    var id: Int
    public init(id: Int) {
        self.id = id
    }
}

public struct VSNUltronLiveAuthorRankingReq: Convertable {
    var id: String
    var type: String?

    public init(id: String, type: String) {
        self.id = id
        self.type = type
    }
}

public struct VSNUltronLiveAuthorGiftRankingReq: Convertable {
    var id: String
    public init(id: String) {
        self.id = id
    }
}

public struct VSNUltronLiveThemeDetailReq: Convertable {
    var liveThemeId: Int
    public init(id: Int) {
        self.liveThemeId = id
    }
}

public struct VSNUltronLiveJoinFansClubReq: Convertable {
    var authorUid: String
    var password: String
    var productId: Int
    public init(authorUid: String, password: String, productId: Int) {
        self.authorUid = authorUid
        self.password = password
        self.productId = productId
    }
}

public struct VSNUltronLiveFansClubMemberListReq: Convertable {
    var authorUid: String
    var page: Int? // 默认1
    var limit: Int? // 默认10
    public init(authorUid:String, page: Int? = 1, limit: Int? = 10) {
        self.authorUid = authorUid
        self.page = page
        self.limit = limit
    }
}

// 查询直播间粉丝团升级临界提示
public struct VSNUltronLiveFansClubLevelUpReq: Convertable {
    var userId: String
    var authorUid: String
    public init(userId:String, authorUid: String) {
        self.userId = userId
        self.authorUid = authorUid
    }
}

// 连麦请求
public struct VSNUltronLiveMixSessionReq: Convertable {
    var roomId: String
    var type: String?
    public init(roomId:String, type:String?) {
        self.roomId = roomId
        self.type = type
    }
}

public struct VSNUltronLiveMixSessionJoinReq: Convertable {
    var type: String?
    var width: Int?
    var height: Int?
    var x : Int?
    var y : Int?
    public init(type:String?,width:Int?, height:Int?,x:Int?, y:Int?) {
        self.type = type
        self.width = width
        self.height = height
        self.x = x
        self.y = y
    }
}

//直播间红包查询
public struct VSNLiveLottrryReq: Convertable {
    var authorUid: String
    var id: Int? // 红包id
    public init(authorUid: String, id: Int?) {
        self.authorUid = authorUid
        self.id = id
    }
}


