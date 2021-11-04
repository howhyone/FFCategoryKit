//
//  VSNHomeReq.swift
//  Alamofire
//
//  Created by Chuan on 2018/12/11.
//

//public struct VSNHomeThemeReq: Convertable {
//    var id: Int
//    
//    public init(id: Int) {
//        self.id = id
//    }
//}

public struct VSNNavigationVideosReq: Convertable {
    var navigationId: Int
    var page: Int
    var limit: Int
    
    public init(navigationId: Int, page: Int = 1, limit: Int = 10) {
        self.navigationId = navigationId
        self.page = page
        self.limit = limit
    }
}

// 专辑组获取专辑列表
public struct VSNHomeAlbumsReq: Convertable {
    var id: Int
    var limit: Int
    var page: Int
    
    public init(id: Int, limit: Int = 10, page: Int = 1) {
        self.id = id
        self.limit = limit
        self.page = page
    }
}

public struct VSNMineSubscribeAlbumReq: Convertable {
    var page: Int //分页第几页, 默认1
    var limit: Int //分页每页数量, 默认20

    public init(page: Int = 1, limit: Int = 20) {
        self.page = page
        self.limit = limit
    }
}

public struct VSNAlbumIDPagableReq: Convertable {
    var albumId: Int
    var page: Int //分页第几页, 默认1
    var limit: Int //分页每页数量, 默认20
    
    public init(albumId: Int, page: Int = 1, limit: Int = 20) {
        self.albumId = albumId
        self.page = page
        self.limit = limit
    }
}

public struct VSNAlbumIDOffsetLimitReq: Convertable {
    var albumId: Int
    var offset: Int //偏移值，当前列表个数
    var limit: Int //分页每页数量, 默认20
    
    public init(albumId: Int, offset: Int = 0, limit: Int = 5) {
        self.albumId = albumId
        self.offset = offset
        self.limit = limit
    }
}

// 获取视频相关专辑
public struct VSNVideoReletedAlbumReq: Convertable {
    var videoId: Int
    public init(videoId: Int) {
        self.videoId = videoId
    }
}

public struct VSNVideoRecordReq: Convertable {
    
    public enum Status: String, Codable {
        case completed = "COMPLETED"
        case none = ""
    }
    
    var videoId: Int
    var status: Status // COMPLETED
    var duration: Int // 时长

    public init(videoId: Int, status: Status, duration: Int) {
        self.videoId = videoId
        self.status = status
        self.duration = duration
    }
}

// 筛选条件的
public enum VSNAlbumFilterByOptionReqRankType {
    case relevance  // 相关度
    case heat       // 热度
    case updatetime       // 更新时间
}

public struct VSNAlbumFilterByOptionReq: Convertable {
    var optionIds: [Int]
    var page: Int //分页第几页, 默认1
    var limit: Int //分页每页数量, 默认20
    var sortCol: String // 排序条件
    var channel: String = "gpapp"
    
    public init(optionIds: [Int], page: Int = 1, limit: Int = 20, sortType: VSNAlbumFilterByOptionReqRankType = .relevance) {
        self.optionIds = optionIds
        self.page = page
        self.limit = limit
        switch sortType {
        case .relevance:
            self.sortCol = ""
        case .heat:
            self.sortCol = "rank"
        case .updatetime:
            self.sortCol = "updateTime"
        }
    }
}

// 专题 视频推荐换一换
public struct VSNThemeRecommendationByChangeReq: Convertable {
    var themeId: Int
    var uid: String
    var page: Int
    var limit: Int
    var timestamp: UInt64
    
    public init(themeId: Int, uid: String, page: Int = 1, limit: Int = 6) {
        self.themeId = themeId
        self.uid = uid
        self.limit = limit
        self.page = page
        self.timestamp = UInt64(Date().timeIntervalSince1970 * 1000)
    }
}

// 视频专题 推荐专辑换一换
public struct VSNThemeRecommendationAlbumByChangeReq: Convertable {
    var themeId: Int
    var uid: String
    
    public init(themeId: Int, uid: String) {
        self.themeId = themeId
        self.uid = uid
    }
}


// 根据视频id的活获取的跳转信息
public struct VSNJumpInfoByVideoIDReq: Convertable {
    var id: Int
    public init(id: Int) {
        self.id = id
    }
}

// 根据视频id的活获取的跳转信息
public struct VSNHotTopicsAddVoteReq: Convertable {
    var voteId: Int
    var optionIds: [Int]
    var touristAllow = true
    public init(voteId: Int, optionIds: [Int]) {
        self.voteId = voteId
        self.optionIds = optionIds
    }
}

public struct ShareRecordReq: Convertable {
    
    public enum ChannelType: String, Convertable {
        case wechat, wechatMoments, copyUrl
    }
    
    public enum TargetType: String, Convertable {
        case video
        case room
        case author
        case article
        case circle
        case point
        case topic
        case theme
    }
    
    public var targetType: TargetType
    public var targetId: String
    public var shareTime: String
    public var shareChannel: ChannelType
    
    public init(targetType: TargetType, targetId: String, shareTime:String, shareChannel: ChannelType) {
        self.targetType = targetType
        self.targetId = targetId
        self.shareTime = shareTime
        self.shareChannel = shareChannel
    }
}

public enum TaskType: String, Convertable {
    case WATCH_VIDEO
    case WATCH_LIVE
    
    var key: String {
        switch self {
        case .WATCH_VIDEO:
            return "videoId"
        case .WATCH_LIVE:
            return "roomId"
        }
    }
}

public struct DailyTaskReq: Convertable {
    var userId: String
    var score: Int
    var taskType: TaskType
    var watchDetail: [String: Int]
    public var id: String
    public var params: [String: Any] {
        return ["userId": userId, "taskType": taskType.rawValue, "extra": ["score": "\(score)", taskType.key: id], "watchDetail": watchDetail.map { return ["authorId": $0.key, "duration": $0.value] }]
    }
    
    
    public init(userId: String, score: Int, id: String, taskType: TaskType = .WATCH_VIDEO, watchDetail: [String: Int]) {
        self.userId = userId
        self.taskType = taskType
        self.id = id
        self.score = score
        self.watchDetail = watchDetail
    }
}

public struct VSNUltronAuthorDynamicListReq: Convertable {
    var authorUid: String
    public init(authorUid: String) {
        self.authorUid = authorUid
    }
}

public struct VSNUltronUserFansLevelReq: Convertable {
    var limit: Int
    var page: Int
    var userId: String
    public init(userId: String, _ limit: Int = 10, page: Int = 1) {
        self.limit = limit
        self.page = page
        self.userId = userId
    }
}

// 弹屏广告的model
public struct VSNUltronPopAdReq: Convertable {
    var castType: Int? // 弹屏类型 1首页 2直播大厅 3行情首页 4:热议 5: 我的 6：播主: 7: 专题 8: 视频
    var authorUid: String?
    var castTargetId: Int? // 专题页id
    public init(castType: Int?, authorUid: String? = nil, castTargetId: Int? = nil) {
        self.castType = castType
        self.authorUid = authorUid
        self.castTargetId = castTargetId
    }
}

// 获取排行榜的model
public struct VSNRankListReq: Convertable {
    var type: String? // 获取排行榜，{live,quanzi,album}
    var page: Int?
    var size: Int?
    public init(type: String? = nil, page: Int? = 1, size: Int? = 20) {
        self.type = type
        self.page = page
        self.size = size
    }
}


// 推荐视频+直播的model
public struct VSNChangeRecommendLiveAndVideosReq: Convertable {
    public struct VSNChangeRecommendLiveAndVideosItemModel: Convertable {
        public var id: Int?
        public var type: String?
        public init(id: Int?, type: String?) {
            self.id = id
            self.type = type
        }
    }
    var changeList: [VSNChangeRecommendLiveAndVideosItemModel]?
    var moduleId: Int?
    public init(changeList: [VSNChangeRecommendLiveAndVideosItemModel], moduleId: Int) {
        self.changeList = changeList
        self.moduleId = moduleId
    }
}

