//
//  VSNUserRequsetModel.swift
//  Alamofire
//
//  Created by Chuan on 2018/9/11.
//

public struct VSNAuthLoginReq: Convertable {
    var distinctId: String?
    var phone: String?
    var verifyCode: String?
    
    public init(phone: String, verifyCode: String, distinctId: String) {
        self.phone = phone
        self.verifyCode = verifyCode
        self.distinctId = distinctId
    }
}

public struct VSNAuthLogoutReq: Convertable {
    var distinctId: String?
    
    public init(distinctId: String) {
        self.distinctId = distinctId
    }
}

public struct VSNAuthWechatReq: Convertable {
    var distinctId: String?
    var code: String?
    
    public init(code: String, distinctId: String) {
        self.code = code
        self.distinctId = distinctId
    }
}

public struct VSNAuthAnonymityReq: Convertable {
    var deviceId: String?
    var deviceName: String?
    var distinctId: String?
    var cid: String?
    
    public init(_ deviceId: String, _ distinctId: String, _ deviceName: String? = "", _ cid: String? = "") {
        self.deviceId = deviceId
        self.distinctId = distinctId
        self.deviceName = deviceName
        self.cid = cid
    }
}

public struct VSNAuthRefreshReq: Convertable {
    var refresh: String?
    
    public init(_ refresh: String) {
        self.refresh = refresh
    }
}

public struct VSNAuthUplodIdfaReq: Convertable {
    var idfa: String?
    var distinctId: String?
    public init(idfa: String, distinctId: String?) {
        self.idfa = idfa
        self.distinctId = distinctId
    }
}

public struct VSNUploadUserInfoReq: Convertable {
    
    public enum Event: String, Codable {
        case login, bannerClicked
    }
    
    public enum BannerType: String, Codable {
        case suspension, cast, bootScreen
    }
    
    public var idfa: String?
    public var distinctId: String?
    public var event: Event
    public var bannerId: Int? //广告id
    public var bannerType: BannerType? //广告类型
    public init(idfa: String, distinctId: String?, event: Event, bannerId: Int? = nil, bannerType: BannerType? = nil) {
        self.idfa = idfa
        self.distinctId = distinctId
        self.event = event
        self.bannerId = bannerId
        self.bannerType = bannerType
    }
}

public struct VSNAuthMyCouponsReq: Convertable {
    public enum StatusType: Int, Codable{
        case unexpired = 0
        case expired = 1
        case used = 2
    }
    var status: StatusType?
    public init( status: StatusType) {
        self.status = status
    }
}

public struct accountLoginReq: Convertable {
    var password: String //对称加密后的密码
    var phone: String//
    var distinctId: String
    
    public init(password: String, phone: String, distinctId: String) {
        self.password = password
        self.phone = phone
        self.distinctId = distinctId
    }
}

// 苹果登录
public struct AppleLoginReq: Convertable {
    var familyName: String? // 姓
    var givenName: String? // 名
    var identityToken: String // 服务端根据token解析数据
    var authorizationCode: String
    var distinctId: String
    var appleSub: String // 苹果授权的user
    
    public init(familyName: String?, givenName: String?, identityToken: String, authorizationCode: String, distinctId: String, appleSub: String) {
        self.familyName = familyName
        self.givenName = givenName
        self.identityToken = identityToken
        self.authorizationCode = authorizationCode
        self.distinctId = distinctId
        self.appleSub = appleSub
    }
}
