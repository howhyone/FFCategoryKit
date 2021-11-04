//
//  VSNStockRequestModel.swift
//  VSNRequestManager
//
//  Created by 李龙龙 on 2021/4/11.
//

public struct VSNFDZQHistoryKlineReqModel: Convertable {
    let endtime: TimeInterval //
    let inst: String //
    let limit: String
    let market: String
    let starttime: TimeInterval
    let period: String // "Min1" | "Min5" | "Min15" | "Min30" | "Min60" | "Min120" | "Min180" | "Min240" | "Week" | "Month" | "Season" | "HalfYear" | "Year"
    let servicetype: String // KLINE：历史K线(不复权）；MIN：基于交易日的历史分时； STATISTICS：历史动态码表。 KLINEB：历史K线(前复权）；KLINEA：历史K线(后复权
    let resptype: String //  支持JSON和PB
    
    public init(endtime: TimeInterval, inst: String, limit: String = "-200", market: String, starttime: TimeInterval = 0, period: String = "Day", servicetype: String = "KLINEB", resptype: String = "JSON") {
        self.endtime = endtime
        self.inst = inst
        self.limit = limit
        self.market = market
        self.starttime = starttime
        self.period = period
        self.servicetype = servicetype
        self.resptype = resptype
    }
}

public struct StockZlzjFlowMainNetInReqModel: Convertable {
    public var field: Int8? // 1 ：5日净流入 ，2： 10日净流入 ，3： 20日净流入；
    public var order: Int8?  //0 倒序 ；1 正序；
    public var type: Int8? // 1 行业，2 概念；
    public var code: String? // 股票代码
    public init(field: Int8?, order: Int8?, type: Int8? = nil, code: String? = nil) {
        self.field = field
        self.order = order
        self.type = type
        self.code = code
    }
}

public struct StockZlzjbkTrendReqModel: Convertable {
    /*
     Integer  sectorType   1 行业，2 概念 ；
     String   code： 板块代码；
     Boolean isTimely ： true:实时；flase：历史
     Integer  type： 1:5天；2：10天；3：20天（非必要参数））
     */
    public var sectorType  : Int8? // 1 行业，2 概念 ；
    public var isTimely: Bool?  //0 倒序 ；1 正序；
    public var type: Int8? // 1:5天；2：10天；3：20天（非必要参数））
    public var code: String? //板块代码；
    public init(sectorType: Int8?, isTimely: Bool?, type: Int8? = nil, code: String?) {
        self.sectorType = sectorType
        self.isTimely = isTimely
        self.type = type
        self.code = code
    }
}

public struct StockPageUserAdviceReqModel: Convertable {
    /*
     type：1：北向资金；2:龙虎榜；3:多空选股；4:机构选股；5:筹码集中；6:高送转；7:主力资金；8:估值精选；9:超跌反弹；10:研报中心；11：外资筹码
        "score":1,
        "content":"建议最多500字符2"
     */
    public var type  : Int?
    public var score: Int?
    public var content: String?
    public init(type: Int?, score: Int?, content: String?) {
        self.type = type
        self.score = score
        self.content = content
    }
}

public struct StockZlzjNewReqModel: Convertable {
    //type: 1：沪深（默认）；2：北向资金；3：创业板
    public var type  : Int?
    public init(type: Int?) {
        self.type = type
    }
}
public struct StockZlzjPlateReqModel: Convertable {
    //type: 1:行业;2:概念（默认）
    public var type: Int?
    //field: 1:当日(默认);2:5日;3:20日;4:60日；
    public var field: Int?
    //order: 0:净流入(默认)；1:净流出
    public var order: Int?
    
    public init(type: Int?, field: Int?, order:Int) {
        self.type = type
        self.field = field
        self.order = order
    }
}

public struct StockBlockTradeReqModel: Convertable {
    public var tradeDay: String?
    public var type: Int8? //type 1：成交量；2：折溢率；3：成交额
    public var sort: Int8? //sort 1：倒叙；2：正序
    
    public init(tradeDay: String?, type: Int8?, sort:Int8?) {
        self.type = type
        self.tradeDay = tradeDay
        self.sort = sort
    }
}

public struct StockBlockTradeDetailReqModel: Convertable {
    public var tradeDay: String?
    
    public var type: Int8? //type 1：成交量；2：折溢率；3：成交额
    public var sort: Int8? //sort 1：倒叙；2：正序
    
    public var market: String
    public var code: String
    
    public init(tradeDay: String? = nil, type: Int8? = nil, sort:Int8? = nil, market: String, code: String) {
        self.type = type
        self.tradeDay = tradeDay
        self.sort = sort
        self.market = market
        self.code = code
    }
}
