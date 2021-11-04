//
//  VSNTopicRequestModel.swift
//  Alamofire
//
//  Created by ytx on 2019/3/13.
//  金大师的requestModel

import Foundation

public struct VSNJDSADSCallbackReqModel: Convertable {
    let uid: String // 用户id
    let ip: String // ip地址
    let os: Int // 0 安卓 1 IOS
    let idfa: String //
    let expireDay: Int // 失效天数（第三方推送到到资源平台失效时间） 股拍传7天
    let app: Int // app 编码 8是股拍
    let timestamp: String // 当前传入的时间戳 毫秒 和 expireDay 组合
    let eventType: Int // 事件类型 0: 激活 1： 注册 3：小程序
    
    public init(uid: String, ip: String, eventType: Int, idfa: String, expireDay: Int, timestamp: String, os: Int = 1, app: Int = 8) {
        self.uid = uid
        self.ip = ip
        self.eventType = eventType
        self.os = os
        self.idfa = idfa
        self.expireDay = expireDay
        self.app = app
        self.timestamp = timestamp
    }
}

public struct VSNJDSADSChannelReqModel: Convertable {
    let os: Int // 0 安卓 1 IOS
    let idfa: String //
    let expireDay: Int // 失效天数（第三方推送到到资源平台失效时间） 股拍传7天
    let app: Int // app 编码 8是股拍
    let timestamp: String // 当前传入的时间戳 毫秒 和 expireDay 组合
    
    public init(idfa: String, expireDay: Int, timestamp: String, os: Int = 1, app: Int = 8) {
        self.os = os
        self.idfa = idfa
        self.expireDay = expireDay
        self.app = app
        self.timestamp = timestamp
    }
}
