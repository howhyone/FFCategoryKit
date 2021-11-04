//
//  VSNUltronRequestModel.swift
//  VSNRequestManager
//
//  Created by 李龙龙 on 2018/9/18.
//

// 播主所有信息流请求
public struct VSNUltronInfoFlowReq: Convertable {
    var limit: Int
    var timestamp: Int?
    var userId: String?
    
    public init(limit: Int = 10, timestamp: Int?, userId: String?) {
        self.limit = limit
        self.timestamp = timestamp
        self.userId = userId
    }
}

// 用户列表请求
public struct VSNUltronUserReq: Convertable {
    var page: Int
    var limit: Int // 默认20
    var uid: String
    
    public init(page: Int = 0, limit: Int = 20, uid: String) {
        self.page = page
        self.limit = limit
        self.uid = uid
    }
}

public struct VSNUserPageReq: Convertable {
    var page: Int
    var limit: Int // 默认20
    var authorUid: String
    
    public init(page: Int = 0, limit: Int = 20, uid: String) {
        self.page = page
        self.limit = limit
        self.authorUid = uid
    }
}

// 关注和粉丝
public struct VSNUltronUserfollowsReq: Convertable {
    var page: Int
    var index: Int // 默认20
    var uid: String?
    
    public init(_ page: Int = 0, _ index: Int = 20, uid: String) {
        self.page = page
        self.index = index
        self.uid = uid
    }
}

// 标签关注
public struct VSNUltronfollowTagsReq: Convertable {
    var page: Int
    var index: Int // 默认20
    var uid: String?
    
    public init(_ page: Int = 20, _ index: Int = 0, uid: String) {
        self.page = page
        self.index = index
        self.uid = uid
    }
}

// 关注和取消关注
public struct VSNUltronfollowReq: Convertable {
    var followId: String? // 要取消和关注的人
    var flag: Bool // 关注状态
    
    public init(_ followId: String, _ flag: Bool) {
        self.followId = followId
        self.flag = flag
    }
}

// 批量关注和取消关注
public struct VSNUltronBatchfollowReq: Convertable {
    var followIds : [String]? // 要取消和关注的人
    public init(_ followIds: [String]? = []) {
        self.followIds = followIds
    }
}


// 标签关注和取消关注
public struct VSNUltronTagsAddReq: Convertable {
    var tagIds: [String]? // 要取消和关注的人
    var flag: Bool // 关注状态
    
    public init(_ tagIds: [String], _ flag: Bool) {
        self.tagIds = tagIds
        self.flag = flag
    }
}

//移除粉丝
public struct VSNUltronFansRemove: Convertable {
    var followId: String? // 要移除的粉丝人
    
    public init(_ followId: String) {
        self.followId = followId
    }
}

//收藏列表
public struct VSNUltronCollectionsListReq: Convertable {
    var page: Int
    var index: Int// 默认20
    
    public init(_ page: Int = 0, _ index: Int = 20) {
        self.page = page
        self.index = index
    }
}

//添加收藏和移除收藏 针对视频
public struct VSNUltronCollectionAddReq: Convertable {
    var targetType: String = "video"
    var targetId: Int
    var flag: Bool
    
    public init(_ targetType: String, _ targetId: Int, _ flag: Bool = true) {
        self.targetType = targetType
        self.targetId = targetId
        self.flag = flag
    }
}

//添加收藏和移除收藏 针对视频
public struct VSNUltronCollectionTypeReq: Convertable {
    var targetType: String?
    var page: Int?
    var limit: Int? // 默认20

    public init(targetType: String?, limit: Int? = 20, page: Int? = 1) {
        self.targetType = targetType
        self.page = page
        self.limit = limit
    }
}

//移除收藏
public struct VSNUltronCollectionRemoveReq: Convertable {
    var ids: [Int]? // id数组
    
    public init(_ ids: [Int]) {
        self.ids = ids
    }
}

//添加评论的内容
public struct VSNUltronCommentAddContentObj: Convertable {
    var text: String?
    var images: [String]?
    var voice: String?
    var imageWidth: [Int]?
    var imageHeight: [Int]?
    var at: [String: String]? //评论中 @ 的数据
    var tagId: String?
    public init(_ text: String, _ images: [String] = [], _ voice: String = "", _ imagewidth: [Int] = [], _ imageheight: [Int] = [], _ at: [String: String]? = nil, _ tagId: String? = nil) {
        self.text = text
        self.images = images
        self.voice = voice
        self.imageWidth = imagewidth
        self.imageHeight = imageheight
        self.at = at
        self.tagId = tagId
    }
}

// 新版圈子发动态
public struct VSNUltronNewCircleAddContentObj: Convertable {
    var text: String?
    var at: [String: String]? //评论中 @ 的数据
    var multiImages: [VSNUltronImageReq]?
    
    public init(text: String, at: [String: String]? = nil, multiImages: [VSNUltronImageReq]? = nil) {
        self.text = text
        self.at = at
        self.multiImages = multiImages
    }
}

//添加评论
public struct VSNUltronCommentAddReq: Convertable {
    var targetType: String = "video"
    var targetId: Int
    var content: VSNUltronCommentAddContentObj?
    var tagId:String?
    
    public init(_ targetType: String, _ targetId: Int, _ content: VSNUltronCommentAddContentObj, tagId:String?) {
        self.targetType = targetType
        self.targetId = targetId
        self.content = content
        self.tagId = tagId
    }
}

public struct VSNUltronImageReq: Convertable {
   public var url: String?
   public var imageWidth: Int?
   public var imageHeight: Int?
   public init () {
        
    }
}

public struct VSNUltronPublicPointReq: Convertable {
    var text: String?
    var images: [VSNUltronImageReq]?
    var at: [String: String]? //评论中 @ 的数据
    var tagId: String?
    var topicId: Int?
    
    public init(topicId:Int?,text: String, images: [VSNUltronImageReq] = [],at: [String: String]? = nil, tagId: String? = nil) {
        self.text = text
        self.images = images
        self.at = at
        self.tagId = tagId
        self.topicId = topicId
    }
}

public struct VSNUltronRevisePointReq: Convertable {
    var text: String?
    var images: [VSNUltronImageReq]?
    var at: [String: String]? //评论中 @ 的数据
    var tagId: String?
    var topicId: Int?
    var id: Int
    
    public init(topicId:Int?,text: String, images: [VSNUltronImageReq] = [],at: [String: String]? = nil, tagId: String? = nil, id: Int) {
        self.text = text
        self.images = images
        self.at = at
        self.tagId = tagId
        self.topicId = topicId
        self.id = id
    }
}

//添加多级评论
public struct VSNUltronSecondCommentAddReq: Convertable {
    var targetType: String = "video"
    var targetId: Int?
    var parentId: Int?
    var content: VSNUltronCommentAddContentObj?
    var isAuthor: Bool
    var tagId: String?
    var isQuanzi: Bool

    public init(_ targetType: String, _ targetId: Int?, _ content: VSNUltronCommentAddContentObj, _ parentId: Int?, _ isAuthor: Bool = false, _ tagId: String? = nil, isQuanzi: Bool? = false) {
        self.targetType = targetType
        self.targetId = targetId
        self.content = content
        self.parentId = parentId
        self.isAuthor = isAuthor
        self.tagId = tagId
        self.isQuanzi = isQuanzi ?? false
    }
}

//我的评论
public struct VSNUltronMyCommentReq: Convertable {
    var page: Int
    var index: Int // 默认20
    
    public init(_ page: Int = 0, _ index: Int = 20) {
        self.page = page
        self.index = index
    }
}

//评论详情
public struct VSNUltronCommentDetailReq: Convertable {
    var targetType: String = "video" // 评论主体类型
    var targetId: Int // 评论主体id
    var isChosen: Bool?
    var page: Int
    var index: Int // 默认20
    var isQuanzi: Bool
    
    public init(_ targetType: String, _ targetId: Int, isChosen: Bool? = nil, _ page: Int = 0, _ index: Int = 20, isQuanzi: Bool? = false) {
        self.targetType = targetType
        self.targetId = targetId
        self.page = page
        self.index = index
        self.isChosen = isChosen
        self.isQuanzi = isQuanzi ?? false
    }
}

//观点详情页分页加载
public struct VSNUltronPointCommentDetailReq: Convertable {
    var cursor: Int?
    var limit: Int? // 默认20
    var id: Int // 评论id
    var page: Int? // 分页
    public init(id: Int, limit: Int? = 20, cursor: Int?, page: Int?) {
        self.id = id
        self.limit = limit
        self.cursor = cursor
        self.page = page
    }
}

//评论盖楼
public struct VSNUltronCommentBuildingReq: Convertable {
    var targetType: String // 评论主体类型
    var targetId: Int // 评论主体id
    var page: Int
    var limit: Int // 默认20
    var isQuanzi: Bool
    
    public init(targetType: String = "video", targetId: Int, page: Int = 0, limit: Int = 20, isQuanzi: Bool? = false) {
        self.targetType = targetType
        self.targetId = targetId
        self.page = page
        self.limit = limit
        self.isQuanzi = isQuanzi ?? false
    }
}

// 评论点赞
public struct VSNUltronCommentLikeReq: Convertable {
    var id: Int // 评论id
    var flag: Bool  // 点赞还是取消
    
    public init(_ id: Int, _ flag: Bool) {
        self.id = id
        self.flag = flag
    }
}

// 子评论详情
public struct VSNUltronCommentSecondDetailReq: Convertable {
    var id: Int // 评论id
    var page: Int
    var index: Int // 默认20
    
    public init(_ id: Int, _ page: Int = 0, _ index: Int = 20) {
        self.id = id
        self.page = page
        self.index = index
    }
}

// 评论删除
public struct VSNUltronCommentRemoveReq: Convertable {
    var id: Int // 评论id
    
    public init(_ id: Int) {
        self.id = id
    }
}

// 视频互动详情(点赞数关注数)
public struct VSNUltronVideoActivityInfoReq: Convertable {
    var id: Int // 视频id
    var navigationId: Int?
    
    public init(_ id: Int, navigationId: Int? = nil) {
        self.id = id
        self.navigationId = navigationId
    }
}

// 视频点赞
public struct VSNUltronVideoLikeReq: Convertable {
    var flag: Bool // 点赞状态
    var vid: Int // 视频的id
    var isQuanzi: Bool
    
    public init(_ flag: Bool, _ vid: Int, isQuanzi: Bool? = false) {
        self.flag = flag
        self.vid = vid
        self.isQuanzi = isQuanzi ?? false
    }
}

public struct VSNUltronVideosByCategoryReq: Convertable {
    var id: Int
    var limit: Int?
    var page: Int?
    var timestamp: TimeInterval?
    var hasAd: Bool?
    public init(_ id: Int, _ limit: Int? = 10, page: Int? = 1, timestamp: TimeInterval?, hasAd: Bool? = false) {
        self.id = id
        self.limit = limit
        self.page = page
        self.timestamp = timestamp
        self.hasAd = hasAd
    }
}

public struct VSNUltronVideosByAuthorReq: Convertable {
    var userId: String
    var limit: Int?
    var page: Int?
    var isVertical: Int?

    public init(_ userId: String, _ limit: Int? = 10, _ page: Int? = 1, _ isVertical: Int? = nil) {
        self.userId = userId
        self.limit = limit
        self.page = page
        self.isVertical = isVertical
    }
}

public struct VSNUltronVideosByAssetsReq: Convertable {
    var id: Int
    var limit: Int
    var page: Int
    
    public init(id: Int, limit: Int = 10, page: Int = 1) {
        self.id = id
        self.limit = limit
        self.page = page
    }
}

public struct VSNUltronVideosByRankListReq: Convertable {
    var type: String
    var limit: Int
    var page: Int
    
    public init(type: String, limit: Int = 10, page: Int = 1) {
        self.type = type
        self.limit = limit
        self.page = page
    }
}

public struct VSNUltronVideosByAlbumsReq: Convertable {
    public enum Direction: String, Codable {
        case none = ""
        case up
        case down
    }
    
    var id: Int //专辑id
    var videoId: Int? //视频id 传了则返回专辑内该视频之前的视频
    var limit: Int
    var direction: Direction //不传:包括该videoId的limit条|up上拉不包括该videoId的limit条|down下啦不包括该videoId的limit条

    public init(id: Int, videoId: Int?, limit: Int = 10, direction: Direction) {
        self.id = id
        self.videoId = videoId
        self.limit = limit
        self.direction = direction
    }
}

public struct VSNUltronVideosByTagReq: Convertable {
    var tagId: String
    var limit: Int?
    var page: Int?
    
    public init(_ tagId: String, _ limit: Int? = 10, _ page: Int? = 1) {
        self.tagId = tagId
        self.limit = limit
        self.page = page
    }
}

public struct VSNUltronVideosByRecommendationReq: Convertable {
    var videoId: String
    var limit: Int?
    var isVertical: Bool?
    var category: Int?
    public init(_ videoId: String, _ limit: Int? = 1, _ isVertical: Bool? = nil, _ category: Int? = nil) {
        self.videoId = videoId
        self.limit = limit
        self.isVertical = isVertical
        self.category = category
    }
}

public struct VSNUltronVideosByStockFlowReq: Convertable {
    
    public enum Market: String, Convertable {
        case sh = "SH"
        case sz = "SZ"
        case sector = "AHZSECTOR"
        case hk = "HKSE"
        case nasdaq = "NASDAQ"
        case nyse = "NYSE"
        case amex = "AMEX"
        case sge = "SGE"
        case hkIndex = "HKINDEX"
        case usIndex = "USINDEX"
    }
    
    var code: String  //标的编码(纯数字)
    var market: Market //标的市场 SH|SZ|AHZSECTOR
    var page: Int //第几页
    var limit: Int //每页数量
    var timestamp: TimeInterval? //分页参数 时间戳13位

    public init(market: Market, code: String, page: Int = 1, limit: Int = 10, timestamp: TimeInterval?) {
        self.market = market
        self.code = code
        self.page = page
        self.limit = limit
        self.timestamp = timestamp
    }
}

public struct VSNUltronVideosByStockReq: Convertable {
    
    public enum StockType: String, Convertable {
        case stock
        case sector
    }
    
    var code: String //股票编码
    var type: StockType //stock|sector
    var page: Int //第几页
    var limit: Int //每页数量

    public init(type: StockType, code: String, page: Int = 1, limit: Int = 10) {
        self.type = type
        self.code = code
        self.page = page
        self.limit = limit
    }
}

public struct VSNHallRecommendV4Req: Convertable {
    var limit: Int?
    var page: Int?
    var authorId: String?
    public init(limit: Int = 10, page: Int = 1, authorId: String? = nil) {
        self.limit = limit
        self.page = page
        self.authorId = authorId
    }
}

public struct VSNUltronUserIdReq: Convertable {
    var userId: String
    public init(_ userId: String) {
        self.userId = userId
    }
}

public struct VSNUltronAuthorReq: Convertable {
    var userId: String
    public init(_ userId: String) {
        self.userId = userId
    }
}

public struct VSNUltronAuthorReqV2: Convertable {
    var limit: Int?
    var page: Int?
    var userId: String
    public init(userId: String, page: Int?, limit: Int?) {
        self.userId = userId
        self.page = page
        self.limit = limit
    }
}

public struct VSNUltronAuthorAndRoomIdReq: Convertable {
    var userId: String
    var roomId: Int?
    public init(userId: String,roomId:Int?) {
        self.userId = userId
        self.roomId = roomId
    }
}

public struct VSNUltronLocationReq: Convertable {
    var latitude: Double
    var longitude: Double
    
    public init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
}

public struct VSNUltronUpdateUserInfoReq: Convertable {
    var avatar: String?
    var nickname: String?
    var gender: Int
    var brief: String?
    
    public init(avatar: String, nickname: String, gender: Int, brief: String) {
        self.avatar = avatar
        self.nickname = nickname
        self.gender = gender
        self.brief = brief
    }
}

public struct VSNUltronBindPhoneReq: Convertable {
    var phone: String?
    var verifyCode: String?
    var certification: String?
    
    public init(phone: String, verifyCode: String, certification: String) {
        self.phone = phone
        self.verifyCode = verifyCode
        self.certification = certification
    }
}

public struct VSNUltronGetSearchSPReq: Convertable {
    var limit: Int
    var page: Int
    var keyword: String?
    
    public init(keyword: String, page: Int, limit: Int) {
        self.keyword = keyword
        self.page = page
        self.limit = limit
    }
}

/// 推荐列表
public struct VSNUltronRecommandReq: Convertable {
    
    var page: Int
    /// 默认20
    var pageSize: Int
    /// 账户状态 2:正常;3:禁封
    var status: Int
    
    public init(page: Int = 1, pageSize: Int = 20, status: Int = 2) {
        self.page = page
        self.pageSize = pageSize
        self.status = status
    }
}

/// 分类下的推荐列表
public struct VSNUltronCategoryRecommandReq: Convertable {
    
    var page: Int
    /// 默认20
    var limit: Int
    /// 账户状态 2:正常;3:禁封
    var id: Int
    
    public init(page: Int = 1, limit: Int = 20, id: Int) {
        self.page = page
        self.limit = limit
        self.id = id
    }
}

public struct VSNUltronVoucherImageReq: Convertable {
    
    var `extension`: String
    
    public init(extension: String) {
        self.extension = `extension`
    }
}

public struct VSNUltronCredentialsReq: Convertable {
    
    var type: String
    
    public init(type: String = "sls") {
        self.type = type
    }
}

public struct VSNUltronMessagesListReq: Convertable {
    
    var startTime: String
    var eventTypes: String?
    public init(startTime: String, eventTypes: String?) {
        self.startTime = startTime
        if eventTypes != nil {
            self.eventTypes = eventTypes
        }
    }
}

public struct VSNUltronCategoryMessagesReq: Convertable {
    
    var checkTime: String
    
    public init(checkTime: String) {
        self.checkTime = checkTime
    }
}

public struct VSNUltronGetuiReq: Convertable {
    
    var userId: String?
    var cid: String
    
    public init(userId: String?, cid: String) {
        self.userId = userId
        self.cid = cid
    }
}

// 视频互动详情(点赞数关注数)
public struct VSNUltronOnlyNeedIDReq: Convertable {
    var id: String // 视频id
    
    public init(_ id: String) {
        self.id = id
    }
}

public struct VSNUltronShareVideoReq: Convertable {
    
    var vid: Int
    
    public init(vid: Int) {
        self.vid = vid
    }
}

// 股拍平台播主的发布视频列表
public struct VSNUltronPublishVideoListReq: Convertable {
    
    var limit: String
    var page: String
    
    public init(limit: String = "100", page: String = "1") {
        self.limit = limit
        self.page = page
    }
}

public struct VSNUltronUploadVideoInfoReq: Convertable {
    
    var title: String
    var image: String
    var videoId: String
    
    
    public init(title: String, image: String, videoId: String) {
        self.title = title
        self.image = image
        self.videoId = videoId
    }
}

// 通用banner
public struct VSNUltronBannerReq: Convertable {
    var type: String // shoot 拍摄页 | wantShoot 我要拍 | suspension 首页悬浮球 | square: 广场 | yours: 个人页 quanziSuspension 圈子悬浮 | verticalVideo 竖版视频详情页
    var authorUid: String?
    var qId: Int?
    
    public init(type: String, authorUid: String? = "", qId: Int? = nil) {
        self.type = type
        self.authorUid = authorUid
        self.qId = qId
    }
}

public struct VSNUltronAuthorAlbumsListReq: Convertable {
    
    var limit: Int
    var page: Int
    var authorUid: String
    public init(authorUid: String, _ limit: Int = 10, page: Int = 1) {
        self.limit = limit
        self.page = page
        self.authorUid = authorUid
    }
}


// 举报接口
public struct VSNUltronReportReq: Convertable {
    
    var targetType: String
    var targetId: Int
    var reason: String
    
    public init(targetType: String = "",targetId: Int = 0, reason: String = "") {
        self.targetType = targetType
        self.targetId = targetId
        self.reason = reason
    }
}


public struct VSNDownloadChannelReq: Convertable {
    
    var isTourist: Bool
    var channel: String
    
    public init(isTourist: Bool = true, channel: String = "") {
        self.isTourist = isTourist
        self.channel = channel
    }
}

public struct VSNGiftsGiveReq: Convertable {
    var isCombo: Bool
    var authorId: String
    var roomId: Int
    var giftId: Int
    public init(authorId: String ,roomId: Int,giftId: Int,isCombo: Bool = false) {
        self.authorId = authorId
        self.roomId = roomId
        self.giftId = giftId
        self.isCombo = isCombo
    }
}

public struct VSNGiftsGiveV2Req: Convertable {
    var isCombo: Bool
    var authorId: String
    var roomId: Int
    var giftId: Int
    var comboNo: String
    var nums: Int
    var password: String
    var hbTaskId:Int?
    
    public init(authorId: String ,roomId: Int,giftId: Int,comboNo: String,nums: Int,isCombo: Bool = false,password: String,hbTaskId:Int?) {
        self.authorId = authorId
        self.roomId = roomId
        self.giftId = giftId
        self.comboNo = comboNo
        self.nums = nums
        self.isCombo = isCombo
        self.password = password
        self.hbTaskId = hbTaskId
    }
}

public struct VSNGiftComboOverReqV2: Convertable {
    var roomId: Int
    var giftId: Int
    var comboNo: String

    public init(roomId: Int,giftId: Int,comboNo: String) {
        self.roomId = roomId
        self.giftId = giftId
        self.comboNo = comboNo
    }
}

public struct VSNGiftComboOverReq: Convertable {
    var roomId: Int
    var giftId: Int
    
    public init(roomId: Int,giftId: Int) {
        self.roomId = roomId
        self.giftId = giftId
    }
}

public struct VSNLiveGiftsListReq: Convertable {
    var limit: Int?
    var page: Int?
    var authorId: String?
    var giftType: Int?
    var type: String? // free'| 'chargeable
    
    public init(giftType:Int? = 1,authorId:String?, limit: Int? = 10, page: Int? = 1, type: String?) {
        self.limit = limit
        self.page = page
        self.giftType = giftType
        self.authorId = authorId
        self.type = type
    }
}

public struct VSNReadAllMessageReq: Convertable {
    var type: String
    
    public init(type: String) {
        self.type = type
    }
}

public struct VSNProgramBriefDetailReq: Convertable {
    var id: Int
    
    public init(id: Int) {
        self.id = id
    }
}

public struct VSNQuickPayReq: Convertable {
    var onOff: Bool
    var password: String
    
    public init(onOff: Bool = true,password: String) {
        self.onOff = onOff
        self.password = password
    }
}

public struct VSNProgramVideoListReq: Convertable {
    var programmeId: Int
    var type: String
    var page: Int?
    var limit: Int?
    var sort: String?

    public init(programmeId: Int, type: String, _ page: Int? = 1, _ limit: Int? = 10, _ sort: String? = nil) {
        self.programmeId = programmeId
        self.type = type
        self.page = page
        self.limit = limit
        self.sort = sort
    }
}


public struct VSNUltronAuthorRankReq: Convertable {
    var authorUid: String
    public init(authorUid: String) {
        self.authorUid = authorUid
    }
}

public struct VSNUltronQuanziReq: Convertable {
    var id: Int
    var page: Int?
    var limit: Int? = 20
    public init(id: Int, page:Int? = nil, limit: Int? = nil ) {
        self.id = id
        self.page = page
        self.limit = limit
    }
}

public struct VSNUltronMyQuanziReq: Convertable {
    var userId: String
    public init(userId: String) {
        self.userId = userId
    }
}

public struct VSNUltronQuanziMemberListReq: Convertable {
    var id: Int
    var page: Int
    var limit: Int? = 20
    public init(id: Int, page: Int, limit: Int? = 20) {
        self.id = id
        self.page = page
        self.limit = limit
    }
}

public enum QuanziDynamicListType: String, Convertable {
    case all //所有
    case host //只看圈主
    case purchased //全部已购
    case isGood //干货专区
    case homework //作业
}

public struct VSNUltronQuanziDynamicListReq: Convertable {
    var id: Int
    var page: Int
    var limit: Int? = 20
    var topRoomUserId: String?
    var type : QuanziDynamicListType
    public init(id: Int, page: Int, limit: Int? = 20, type: QuanziDynamicListType, topRoomUserId: String? = nil) {
        self.id = id
        self.page = page
        self.limit = limit
        self.type = type
        self.topRoomUserId = topRoomUserId
    }
}

public struct VSNUltronPraiseQuanziDynamicReq: Convertable {
    var id: Int
    var flag: Bool
    public init(id: Int, flag: Bool) {
        self.id = id
        self.flag = flag
    }
}

public struct VSNUGCQuanziListReq: Convertable {
    var limit: Int?
    var page: Int?
    
    public init(_ limit: Int? = 10, _ page: Int? = 1) {
        self.limit = limit
        self.page = page
    }
}

public struct VSNUltronQuanziAddReq: Convertable {
    var contentType: String = "text"
    var qId: Int
    var content: VSNUltronNewCircleAddContentObj?
    var type: String
    var price: Double?
    
    public init(_ contentType: String, _ qId: Int, _ content: VSNUltronNewCircleAddContentObj, _ type:String = "free", _ price:Double?) {
        self.contentType = contentType
        self.qId = qId
        self.content = content
        self.type = type
        self.price = price
    }
}

public struct VSNUltronQuanziReviseReq: Convertable {
    var id: Int
    var title: String?
    var avatar: String?
    var description: String?
    var verifiable: Bool?
    var previewable: Bool?
    
    public init(id: Int, title: String? = nil, avatar: String? = nil, description: String? = nil, verifiable: Bool? = nil, previewable: Bool? = nil) {
        self.id = id
        self.title = title
        self.avatar = avatar
        self.description = description
        self.verifiable = verifiable
        self.previewable = previewable
    }
}

public struct VSNUltronQuanziAuditApplyReq: Convertable {
    var id: Int
    var flag: Bool
    var auditComment: String?
    
    public init(_ id: Int, _ flag: Bool, _ auditComment: String? = nil) {
        self.id = id
        self.flag = flag
        self.auditComment = auditComment
    }
}

public struct VSNUltronQuanziKickMembersReq: Convertable {
    var qId: Int
    var userId: String
    
    public init(_ qid: Int, _ userId: String) {
        self.qId = qid
        self.userId = userId
    }
}

public struct VSNUltronQuanziDynamicReq: Convertable {
    var id: Int
    public init(id: Int) {
        self.id = id
    }
}

public struct VSNUltronQuanziDynamicCommentListReq: Convertable {
    var id: Int
    var page: Int
    var limit: Int?
    public init(id: Int, page: Int, limit: Int? = 20) {
        self.id = id
        self.page = page
        self.limit = limit
    }
}

public struct VSNUltronJoinQuanziReq: Convertable {
    var id: Int
    var reason: String
    public init(id: Int, reason: String) {
        self.id = id
        self.reason = reason
    }
}

public struct VSNUltronQuanziChargeListReq: Convertable {
    var id: Int
    var page: Int
    var limit: Int?
    var type: String?
    public init(id: Int, page: Int, limit: Int? = 20, type: String? = "all") {
        self.id = id
        self.page = page
        self.limit = limit
        self.type = type
    }
}

public struct CompleteMonitoredVideoReq: Convertable {
    
    var taskType: String
    
    public struct Extra: Convertable {
        var albumId: Int
        var videoId: Int
        var value: Int
        
        public init(albumId: Int, videoId: Int, value: Int) {
            self.albumId = albumId
            self.videoId = videoId
            self.value = value
        }
    }
    
    var extra: Extra
    
    public init(taskType: String = "WATCH_ALBUM", albumId: Int, videoId: Int, value: Int) {
        self.taskType = taskType
        self.extra = Extra(albumId: albumId, videoId: videoId, value: value)
    }

}

public struct AppNoticeReq: Convertable {
    
    public enum NoticeType: String, Codable {
        case welfare, hot, system, warning
    }
    
    let type: NoticeType
    let page: Int //第几页 默认1
    let limit: Int //每页数量 默认10
    
    public init(page: Int = 1, limit: Int = 10, type: NoticeType) {
        self.page = page
        self.limit = limit
        self.type = type
    }
    
}

public struct VSNUltronKuaiDianVideosReq: Convertable {
    var page: Int
    var limit: Int?
    public init(page: Int, limit: Int? = 20) {
        self.page = page
        self.limit = limit
    }
}

public struct VSNUltronCancleForbinddenReq: Convertable {
    var targetType: String = "room"
    var targetId: Int?
    var flag: Bool
    var userId: String?
    var type: Int?
    
    public init(targetType: String, targetId: Int?, flag: Bool,userId: String?,type: Int?) {
        self.targetType = targetType
        self.targetId = targetId
        self.flag = flag
        self.userId = userId
        self.type = type
    }
}

public struct VSNUltronAuthorIndexTopReq: Convertable {
    var dataType: String
    var id: Int
    var isTop:Bool?
    
    public init(dataType: String, id: Int, isTop: Bool? = false) {
        self.dataType = dataType
        self.id = id
        self.isTop = isTop
    }
}

public struct VSNUltronQuanziIndexTopReq: Convertable {
    var qId: Int
    var postsId: Int
    var flag:Bool?
    
    public init(qId: Int, postsId: Int, flag: Bool? = false) {
        self.qId = qId
        self.postsId = postsId
        self.flag = flag
    }
}

public struct VSNUltronDiscoverQuanziReq: Convertable {
    var shouldPay: Bool?
    var page: Int
    var limit: Int? = 20
    
    public init(shouldPay: Bool?, page: Int, limit: Int? = 20) {
        self.shouldPay = shouldPay
        self.page = page
        self.limit = limit
    }
}

public struct VSNUltronCollectionPDFReq: Convertable {
    var link: String?
    var linkTitle: String?
    var flag: Bool?
    
    public init(link: String?, linkTitle: String?, flag: Bool? = false) {
        self.link = link
        self.linkTitle = linkTitle
        self.flag = flag
    }
}

public struct VSNUltronCollectionCheckReq: Convertable {
    var targetType: String?
    var targetId: Int?
    var link: String?
    
    public init(link: String?, targetType: String, targetId: Int?) {
        self.targetType = targetType
        self.targetId = targetId
        self.link = link
    }
}

public struct VSNCloudVersionConfigReq: Convertable {
    var marketId: String?
    var versionCode: Int?
    var appId: String?
    var versionId: String?
    var marketType: String?
    
    public init(marketId: String?, versionCode: Int?, appId: String?, versionId: String?, marketType:String?) {
        self.marketId = marketId
        self.versionCode = versionCode
        self.appId = appId
        self.versionId = versionId
        self.marketType = marketType
    }
}

public struct VSNCommentPermissionReq: Convertable {
    var contentId: Int
    var contentType: String
    var permission: Int?
    
    public init(contentType: String, contentId: Int, permission: Int?) {
        self.contentType = contentType
        self.contentId = contentId
        self.permission = permission

    }

}

public struct VSNUltronQuanziWelfareListReq: Convertable {
    var id: Int
    var page: Int
    var limit: Int? = 20
    var type : VSNQuanziWelfareTabType
    public init(id: Int, page: Int, limit: Int? = 20, type: VSNQuanziWelfareTabType) {
        self.id = id
        self.page = page
        self.limit = limit
        self.type = type
    }
}

public enum VSNUltronAgreementBehaviorType : Int, Codable {
    case check = 1//勾选同意
    case countingSeconds//读秒确认
    case click//点击确认
}

public struct VSNUltronAgreementRecordReq: Convertable {

    var platform: Int
    var pagename: String?
    var agreement: [String]?
    var behavior: VSNUltronAgreementBehaviorType?
    var distinctId: String?

    public init(platform: Int = 3, pagename: String?, agreement: [String]?, behavior:VSNUltronAgreementBehaviorType?, distinctId: String?) {
        self.platform = platform
        self.pagename = pagename
        self.agreement = agreement
        self.behavior = behavior
        self.distinctId = distinctId
    }
}

public struct UploadVideoReq: Convertable {
    var id: Int?
    var videoId: String
    var title: String?
    var image: String?
    var tags: [String]? //tagId数组, ["CUADAH0000011536", "BGADAA1801000002"]
    var topicId: Int? //话题ID,不选0
    var isAutoPublish = true
    var isPay = false
    var videoType = 0
    
    public init(id: Int?, videoId: String, title: String?, image: String?, tags: [String]?, topicId: Int?) {
        self.id = id
        self.videoId = videoId
        self.title = title
        self.image = image
        self.tags = tags
        self.topicId = topicId
    }
}

