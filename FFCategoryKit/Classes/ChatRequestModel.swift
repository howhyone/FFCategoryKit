//
//  ChatRequestModel.swift
//  ActiveLabel
//
//  Created by 李现科 on 2020/2/11.
//

import Foundation

public struct ChatImageOps: Convertable {
    
    public var imageWidth: Int?
    public var imageHeight: Int?
    
    init(imageWidth: Int?, imageHeight: Int?) {
        self.imageWidth = imageWidth
        self.imageHeight = imageHeight
    }
}

public struct ChatSendReq: Convertable {
    
    public var to: String? //from用户给to用户私信
    public var content: Content?
    public struct Content: Convertable {
        public var text: String? //文字
        public var image: String? //图片
        public var imageOps: ChatImageOps?
        public var type: String? // 发语音和视频用到  audio | video
        public var url: String? // 文件阿里云地址
        public var duration: Int? // 文件时长
        public var videoId: String? // //视频阿里云的videoId

        init(text: String?, image: String?, imageWidth: Int?, imageHeight: Int?, type: String? = nil, url: String? = nil, duration: Int? = nil, videoId: String? = nil) {
            self.text = text
            self.image = image
            self.type = type
            self.url = url
            self.duration = duration
            self.videoId = videoId
            imageOps = ChatImageOps(imageWidth: imageWidth, imageHeight: imageHeight)
        }
    }

    public init(to: String?, text: String?, image: String?, imageWidth: Int?, imageHeight: Int?, type: String? = nil, url: String? = nil, duration: Int? = nil, videoId: String? = nil) {
        self.to = to
        self.content = Content(text: text, image: image, imageWidth: imageWidth, imageHeight: imageHeight, type: type, url: url, duration: duration, videoId: videoId)
    }
}

public struct SessionByIDReq: Convertable {
    
    public var limit: Int?
    public var sessionId: String //会话id
    public var createdAt: String? //用于分页

    public init(sessionId: String, limit: Int?, createdAt: String?) {
        self.sessionId = sessionId
        self.limit = limit
        self.createdAt = createdAt
    }
}

public struct SessionByUserIDReq: Convertable {
    
    public var limit: Int?
    public var withUser: String //会话id
    public var createdAt: String? //用于分页

    public init(withUserId: String, limit: Int?, createdAt: String?) {
        self.withUser = withUserId
        self.limit = limit
        self.createdAt = createdAt
    }
}

public struct TimeAndLimitReq: Convertable {
    
    public var id: Int?
    public var lastMessageAt: Int? //用于分页
    public var limit: Int? //用户分页 默认20

    public init(id: Int?, lastMessageAt: Int?, limit: Int?) {
        self.id = id
        self.lastMessageAt = lastMessageAt
        self.limit = limit
    }
}

public struct NewChatReq: Convertable {
    
    public var id: Int?
    public var chatType: MessageRecordModel.RecordType?
    public var lastMessageAt: Int? //用于分页
    public var limit: Int? //用户分页 默认20

    public init(id: Int?, chatType: MessageRecordModel.RecordType?, lastMessageAt: Int?, limit: Int?) {
        self.id = id
        self.chatType = chatType
        self.lastMessageAt = lastMessageAt
        self.limit = limit
    }
}
