//
//  JinCeFinanceRequestModel.swift
//  VSNRequestManager
//
//  Created by ytx on 2020/11/3.
//

import Foundation

public enum UrgooPeriod: Int, Codable {
    case oneWeek, oneMounth, sixMounth = 6
}

public enum SCRPeriod: Int, Codable {
    case aHalfYear=1, oneYear, oneAndHalfYear
}

public enum HighBonusSharesType: Int, Codable {
    case accufundps = 1, earnps, unapproprofitps, totalshare
}


public struct UrgooFocusReq: Convertable {
        
    public var period: UrgooPeriod
    public var pageNum: Int? //用于分页
    public var pageSize: Int? //用户分页 默认30

    public init(period: UrgooPeriod, pageNum: Int?, pageSize: Int?) {
        self.period = period
        self.pageNum = pageNum
        self.pageSize = pageSize
    }
}

public struct UrgooStockValueReq: Convertable {
        
    public var period: UrgooPeriod
    public var stock: String? //用于分页

    public init(period: UrgooPeriod, stock: String?) {
        self.period = period
        self.stock = stock
    }
}

public struct UrgooStockReportReq: Convertable {
        
    public var stockCode: String
    public var pageNum: Int? //用于分页
    public var pageSize: Int? //用户分页 默认30

    public init(stockCode: String, pageNum: Int?, pageSize: Int?) {
        self.stockCode = stockCode
        self.pageNum = pageNum
        self.pageSize = pageSize
    }
}

public struct StockDailyReq: Convertable {
        
    public enum Exchange: String, Codable {
        case sh, sz
    }
    
    public enum SortType: Int, Codable {
        case all = 1, hotMoney, security
    }

    public var tradeDay: String // 交易日时间戳
    public var type: SortType? // 筛选

    public init(tradeDay: String, type: SortType?) {
        self.tradeDay = tradeDay
        self.type = type
    }
}

public struct StockLHBDailyReq: Convertable {
        
    public var tradeDay: String // 交易日时间戳
    public var exchangeID: String? //市场
    public var instrumentID: String? //股票code

    public init(tradeDay: String, exchangeID: String?, instrumentID:String?) {
        self.tradeDay = tradeDay
        self.exchangeID = exchangeID
        self.instrumentID = instrumentID
    }
}

public struct SecurityDailyReq: Convertable {
        
    public enum Direction: String, Codable {
        case desc, asc
    }
    
    public var `type`: Int64? // 代表月份
    public var sortType: String? //市场
    public var pageNum: Int? //用于分页
    public var pageSize: Int? //用户分页 默认30
    public var sortDirection: Direction? // 方向  枚举值 desc  asc

    public init(type: Int64, sortType: String?, pageNum: Int?, pageSize: Int?, sortDirection: Direction?) {
        self.type = type
        self.sortType = sortType
        self.pageNum = pageNum
        self.pageSize = pageSize
        self.sortDirection = sortDirection
    }
}

public struct StockLHBSalesDepartReq: Convertable {
        
    public var tradeDay: String? // 交易日时间戳
    public var boCode: String? //市场
    public var pageSize: Int? //股票code

    public init(tradeDay: String?, boCode: String?, pageSize:Int?) {
        self.tradeDay = tradeDay
        self.boCode = boCode
        self.pageSize = pageSize
    }
}

public struct StockSCRListReq: Convertable {
        
    public var type: SCRPeriod?
    public var count: Int?

    public init(type: SCRPeriod?, count:Int?) {
        self.type = type
        self.count = count
    }
}

public struct HighBonusSharesListReq: Convertable {
    
    public var type: HighBonusSharesType?
    public var count: Int?

    public init(type: HighBonusSharesType?, count:Int?) {
        self.type = type
        self.count = count
    }
}

public enum NetOfficialFlowsType: Int, Codable {
    case jingLiuRu = 1, fenZhongZengZhang10, riZengZhang5, riZengZhang10,riZengZhang30, riZengZhang45
}

public struct NetOfficialFlowsReq: Convertable {
    
    public var type: NetOfficialFlowsType?
    public var count: Int?

    public init(type: NetOfficialFlowsType?, count:Int?) {
        self.type = type
        self.count = count
    }
}

public struct StockROEReq: Convertable {
    
    public var limit: Int?

    public init(limit: Int?) {
        self.limit = limit
    }
}

public struct StockChannelSubscribeReq: Convertable {
    
    public var subscribe: Bool?
    public var type: Int

    public init(subscribe: Bool?, type: StockChannelType) {
        self.subscribe = subscribe
        self.type = type.rawValue
    }
}

public struct StockSearchReq: Convertable {
    public var key: String
    public init(key: String) {
        self.key = key
    }
}

public struct StockStrategyReq: Convertable {
    public var market: String
    public var code: String

    public init(market: String, code: String) {
        self.market = market
        self.code = code
    }
}

public struct DraganPlatesDetailReq: Convertable {
        
    public var day: String // 交易日时间戳
    public var type: StockDraganHotPointType

    public init(tradeDay: String, type: StockDraganHotPointType) {
        self.day = tradeDay
        self.type = type
    }
}

public struct IdleCapitalOnListReq: Convertable {
    
    public enum OnListType: Int, Codable {
        case oneMonth = 1, threeMonths, halfYear, oneYear
    }
    public var id: Int?
    public var type: OnListType

    public init(id: Int?, type: OnListType) {
        self.id = id
        self.type = type
    }
}
