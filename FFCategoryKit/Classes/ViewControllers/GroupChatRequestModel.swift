//
//  GroupChatRequestModel.swift
//  Alamofire
//
//  Created by ytx on 2020/2/24.
//

import Foundation

public struct SendGroupMsgReq: Convertable {
    
    public var sessionId: String // 登陆返回的sessionId
    public var content: String // 内容
//    public var atCustomerMessageId: Int?// 回复的消息id
//    public var atTeacherIds: String?// at的老师逗号分隔
//    public var isSlip: Int? // 是否纸条1是
    public var msgType: Int // 空为1文本，2图片
    
    public init(sessionId: String, content: String, atCustomerMessageId: Int? = nil, atTeacherIds: String? = nil, isSlip: Int? = nil, msgType: Int) {
        self.sessionId = sessionId
        self.content = content
//        self.atCustomerMessageId = atCustomerMessageId
//        self.atTeacherIds = atTeacherIds
//        self.isSlip = isSlip
        self.msgType = msgType
    }
}

public struct CommonSendGroupMsgReq: Convertable {
    
    public var userId: String // 登陆返回的userId
    public var sourceId: Int // 登陆返回的sourceId
    public var content: String // 内容
    public var sendRoomIds: [Int]
    public var atCustomerId: Int? //
    public var msgType: Int // 空为1文本，2图片
    public var isSlip = 0
    public var voiceLength: String
    public var textFormat: String?

    public init(userId: String, sourceId: Int, content: String, sendRoomIds: [Int], atCustomerId: Int? = nil, msgType: Int, voiceLength: String = "", textFormat: String? = nil) {
        self.userId = userId
        self.sourceId = sourceId
        self.content = content
        self.sendRoomIds = sendRoomIds
        self.atCustomerId = atCustomerId
        self.msgType = msgType
        self.voiceLength = voiceLength
        self.textFormat = textFormat
    }
}

public class GroupChatLastModel: Convertable {

    public var sourceId: Int // 登陆返回的sourceId
    public var lastId: Int? // 分页用lastId
    public var unreadCount: Int? = 0

    public init(sourceId: Int, lastId: Int?) {
        self.sourceId = sourceId
        self.lastId = lastId
    }
    
}

public class GroupChatCleanMsgReq: Convertable {

    public var roomId: Int?
    public var userId: String?

    public init(roomId: Int?, userId: String?) {
        self.roomId = roomId
        self.userId = userId
    }
    
}

public struct GroupChatUnreadCountReq: Convertable {

    public var groupChats: [GroupChatLastModel]
    
    var sourceIds: [Int] {
        return groupChats.map { $0.sourceId }
    }
    
    var lastIds: [Int] {
        return groupChats.map { $0.lastId ?? 0 }
    }

    public init(groupChats: [GroupChatLastModel]) {
        self.groupChats = groupChats
    }

}

public struct GroupMsgRecordReq: Convertable {

    public var sessionId: String // 登陆返回的sessionId
    public var lastId: String? // 分页用lastId
    public var pageSize: Int? // 每页数量
    public var isTeacher: Int? // 是否老师1是0否
    public var isCommend: Int? // 是否精华1是0否
    
    public init(sessionId: String, lastId: String? = nil, pageSize: Int? = nil, isTeacher: Int? = nil, isCommend: Int? = nil) {
        self.sessionId = sessionId
        self.lastId = lastId
        self.pageSize = pageSize
        self.isTeacher = isTeacher
        self.isCommend = isCommend
    }
}

public struct GroupMsgTeacherRecordReq: Convertable {

    public var sessionId: String // 登陆返回的sessionId
    public var lastId: String? // 分页用lastId
    public var userIds: String? // 筛选老师

    public init(sessionId: String, lastId: String? = nil, userIds: String? = nil) {
        self.sessionId = sessionId
        self.lastId = lastId
        self.userIds = userIds
    }

}

public struct GroupMsgSessionIdBasedReq: Convertable {

    public var sessionId: String // 登陆返回的sessionId
    public var lastId: String? // 分页用lastId
    public var pageSize: Int? // 每页数量
    
    public init(sessionId: String, lastId: String? = nil, pageSize: Int? = nil) {
        self.sessionId = sessionId
        self.lastId = lastId
        self.pageSize = pageSize
    }
}


public struct GroupChatPushSettingConfigReq: Convertable {
    public var allowMsgPush: Bool?
    public var groupChatId: Int?
    
    public init(allowMsgPush: Bool, groupChatId: Int) {
        self.allowMsgPush = allowMsgPush
        self.groupChatId = groupChatId
    }
}

public struct RemoveUserReq: Convertable {

    public var userId: String
    public var roomId: Int
    
    public init(userId: String, roomId: Int) {
        self.userId = userId
        self.roomId = roomId
    }
}

public struct MuteGroupChatReq: Convertable {

    public var flag: Bool
    public var groupChatId: Int
    
    public init(flag: Bool, groupChatId: Int) {
        self.flag = flag
        self.groupChatId = groupChatId
    }
}

public class DeleteMsgReq: Convertable {

    public var belong: Int?
    public var id: Int?
    public var userId: String?
    public var sign: String?
    public var status: Int?

    public init(belong: Int?, id: Int?, userId: String?, sign: String?, status: Int? = 2) {
        self.belong = belong
        self.id = id
        self.userId = userId
        self.sign = sign
        self.status = status
    }
    
}
