//
//  VSNIAPRequestModel.swift
//  Alamofire
//
//  Created by ll on 2019/7/8.
//

public struct IAPReq: Convertable {
    var page: Int
    var index: Int // 默认20
    var shouldComment: Bool?
    
    public init(_ page: Int = 0, _ index: Int = 20, _ shouldComment: Bool? = nil) {
        self.page = page
        self.index = index
        self.shouldComment = shouldComment
    }
}

public struct IAPPageReq: Convertable {
    var page: Int
    var limit: Int // 默认20
    
    public init(page: Int = 1, limit: Int = 20) {
        self.page = page
        self.limit = limit
    }
}

public struct PurchasedListReq: Convertable {
    var limit: Int
    var timestamp: Int?
    var type: Int // 已购类型,0:全部；1:直播；2：课程；3：学习班；4：文章；5：专栏

    public init(_ timestamp: Int = 0, _ limit: Int = 20, _ type: Int = 0) {
        self.timestamp = timestamp
        self.limit = limit
        self.type = type
    }
}

public struct rechargeReq: Convertable {
    var sku: String
    var payChannel: String
    public init(sku: String, _ payChannel: String = "apple") {
        self.sku = sku //代币商品sku
        self.payChannel = payChannel
    }
}

public struct rechargeCheckReq: Convertable {
    var tradeNo: String //充值订单
    var receipt: String //iap返回的凭证

    public init(tradeNo: String, receipt: String) {
        self.tradeNo = tradeNo
        self.receipt = receipt
    }
}

public struct ConsumeReq: Convertable {
    var consumeProductId: Int //消费商品id
    var couponNo: [String]? //优惠券编号
    var password: String? //密码

    public init(consumeProductId: Int, couponNo: [String]?, password: String) {
        self.consumeProductId = consumeProductId
        self.couponNo = couponNo
        self.password = password
    }
}

public struct NewConsumeReq: Convertable {
    var id: Int //商品id
    var productId: Int? // 关联model的id
    var couponNo: [String]? //优惠券编号
    var password: String? //密码

    public init(id: Int, productId: Int?, couponNo: [String]?, password: String) {
        self.id = id
        self.productId = productId
        self.couponNo = couponNo
        self.password = password
    }
}


public struct joinSocicalcircleConsumeReq: Convertable {
    var productId: Int //消费商品id
    var socicalcircleId: Int //优惠券编号
    var password: String? //密码
    var couponNo: [String]?
    var isPromotion: Bool?
    var isRenewals: Bool?
    
    public init(consumeProductId: Int, socicalcircleId: Int, password: String, couponNo:[String]?, isPromotion: Bool?, isRenewals: Bool?) {
        self.productId = consumeProductId
        self.socicalcircleId = socicalcircleId
        self.password = password
        self.couponNo = couponNo
        self.isPromotion = isPromotion
        self.isRenewals = isRenewals
    }
}

public struct consumeSimpleReq: Convertable {
    var consumeNo: String //消费订单号
    
    public init(consumeNo: String) {
        self.consumeNo = consumeNo
    }
}

public struct rechargeCancelReq: Convertable {
    var tradeNo: String //充值订单
    
    public init(tradeNo: String) {
        self.tradeNo = tradeNo
    }
}

public struct ConsumeProductReq: Convertable {
    var productType: VSNProductTypeModel //商品类型 0表示专辑
    var productId: Int? //对应商品id
    var authorUid: String? //对应商品id

    public init(productType: VSNProductTypeModel, productId: Int?, authorUid: String? = nil) {
        self.productType = productType
        self.productId = productId
        self.authorUid = authorUid
    }
}

public struct certificationReq: Convertable {
    var phone: String //手机号
    var verifyCode: String//验证码
    
    public init(phone: String, verifyCode: String) {
        self.phone = phone
        self.verifyCode = verifyCode
    }
}

public struct userPaymentPwdReq: Convertable {
    var password: String //对称加密后的密码
    var certification: String//验证手机号返回的凭证，首次设置可以为空
    
    public init(password: String, certification: String) {
        self.password = password
        self.certification = certification
    }
}

public struct verifyPwdReq: Convertable {
    var password: String //对称加密后的密码
    
    public init(password: String) {
        self.password = password
    }
}

public struct QuanziRewardOrderReq: Convertable {
    var authorUid: String //播主
    var dynamicId: String //播主
    var rewardId: String //
    var password: String?//对称加密后的密码
    
    public init(rewardId: String,authorUid:String,dynamicId: String,password:String?) {
        self.authorUid = authorUid
        self.dynamicId = dynamicId
        self.rewardId = rewardId
        self.password = password
    }
}

public struct QuanziDynamicOrderReq: Convertable {
    var dynamicId: String //播主
    var password: String?//对称加密后的密码
    
    public init(dynamicId: String,password:String?) {
        self.dynamicId = dynamicId
        self.password = password
    }
}

public struct PaidLiveConsumeReq: Convertable {
    var productId: Int //消费商品id
    var id: Int //
    var password: String? //密码
    var couponNo: [String]? //优惠券编号
    var isPromotion: Bool?
    public init(id: Int, productId: Int, password: String, couponNo: [String]?, isPromotion: Bool?) {
        self.productId = productId
        self.id = id
        self.password = password
        self.couponNo = couponNo
        self.isPromotion = isPromotion
    }
}

public struct GuideGiftShowReq: Convertable {
//    var userId: String? // header里默认有不用传
    var authorUId: String?
    var flag: Bool?

    public init(authorUId: String?, flag: Bool?) {
//        self.userId = userId
        self.authorUId = authorUId
        self.flag = flag
    }
}

