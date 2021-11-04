//
//  VSNUserRequsetModel.swift
//  Alamofire
//
//  Created by Chuan on 2018/9/17.
//

public struct VSNUserUpdateReq: Convertable {
    var nickname: String?
    var avatar: String?
    var gender: Int
    
    public init(_ nickname: String, avatar: String? = "", gender: Int ) {
        self.nickname = nickname
        self.avatar = avatar
        self.gender = gender
    }
}

public struct VSNUserLocationReq: Convertable {
    var latitude: Double
    var longitude: Double
    
    public init(_ latitude: Double, _ longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
}

public struct VSNUserPushConfigReq: Convertable {
    var allowInteractionPush: Bool?
    var allowFollowPush: Bool?
    
    var allowSingleChangePush: Bool?
    var allowMasterChangePush: Bool?
    
    public init(allowInteractionPush: Bool?, allowFollowPush: Bool?, allowSingleChangePush: Bool?, allowMasterChangePush:Bool?) {
        if let i = allowInteractionPush {
            self.allowInteractionPush = i
        }
        if let f = allowFollowPush {
            self.allowFollowPush = f
        }
        
        if let s = allowSingleChangePush {
            self.allowSingleChangePush = s
        }
        
        if let m = allowMasterChangePush {
            self.allowMasterChangePush = m
        }
    }
}

public struct VSNAuthorPushConfigReq: Convertable {
    var allowLivePush: Bool?
    var allowVideoPush: Bool?
    var allowArticlePush: Bool?
    var followId: String
    
    public init(allowLivePush: Bool?, allowVideoPush: Bool?, allowArticlePush: Bool?, followId: String) {
        if let l = allowLivePush {
            self.allowLivePush = l
        }
        if let v = allowVideoPush {
            self.allowVideoPush = v
        }
        if let a = allowArticlePush {
            self.allowArticlePush = a
        }
        self.followId = followId
    }
}

public struct VSNUserBindPhoneNumberReq: Convertable {
    var appId: String
    var appKey: String
    var randoms: String
    var timestamp: String
    var device: String
    var telecom: String
    var version: String
    var accessToken: String
    var sign: String
    var distinctId: String
    var token: String
    
    public init(appId: String, appKey: String, randoms: String, timestamp: String, device: String, telecom: String, version: String, accessToken: String, sign: String, distinctId: String = "", token: String = "") {
        self.appId = appId
        self.appKey = appKey
        self.randoms = randoms
        self.timestamp = timestamp
        self.device = device
        self.telecom = telecom
        self.version = version
        self.accessToken = accessToken
        self.sign = sign
        self.distinctId = distinctId
        self.token = token
    }
}

public struct VSNPlayHistoryReq: Convertable {
    var offset: Int //偏移量
    var limit: Int //分页每页数量, 默认20
    
    public init(offset: Int = 1, limit: Int = 20) {
        self.offset = offset
        self.limit = limit
    }
}

public struct VSNUserChannelReq: Convertable {
    var inviteCode: String? // 手动输入邀请码
    var openInstallCode: String? // openInstall码
    var pasteUrl: String? // 粘贴码
    var marketCode: String? // 市场码

    public init(inviteCode: String, openInstallCode: String, pasteUrl: String, marketCode: String) {
        self.inviteCode = inviteCode
        self.openInstallCode = openInstallCode
        self.pasteUrl = pasteUrl
        self.marketCode = marketCode
    }
}

public struct VSNUserChannelV2Req: Convertable {
    var pasteUrl: String? // 粘贴码
    var marketCode: String? // 市场码
    var openInstallCode: String? // 渠道码
    var pasteCode: String? // 粘贴码
    var searchKeywordChannelCode: String? // 搜索关键字渠道码

    public init(pasteUrl: String, marketCode: String, openInstallCode: String = "", pasteCode: String = "", searchKeywordChannelCode: String? = nil) {
        self.pasteUrl = pasteUrl
        self.marketCode = marketCode
        self.openInstallCode = openInstallCode
        self.pasteCode = pasteCode
        self.searchKeywordChannelCode = searchKeywordChannelCode
    }
}

public struct VSNUserBindPhoneConflictMergeReq: Convertable {
    var mergeVerifyCode: String? // 粘贴码
    var confirmText: String? // 市场码
    var scene: Int? // 1、代理人及链接；2、App登录；3、App换绑
    var distinctId: String?
    
    public init(mergeVerifyCode: String, confirmText: String, distinctId: String, scene: Int = 3) {
        self.mergeVerifyCode = mergeVerifyCode
        self.confirmText = confirmText
        self.distinctId = distinctId
        self.scene = scene
    }
}
