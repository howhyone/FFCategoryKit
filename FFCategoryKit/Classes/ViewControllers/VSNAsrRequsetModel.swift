//
//  VSNAsrReq.swift
//  Alamofire
//
//  Created by Chuan on 2018/12/11.
//

public struct VSNAsrReq: Convertable {
    var data: String?
    var seq: Int?
    var len: Int?
    var end: Int?
    var vid: String?
    var format: Int?
    
    public init(data: String, seq: Int, len: Int, end: Int, vid: String, format: Int) {
        self.data = data
        self.seq = seq
        self.len = len
        self.end = end
        self.vid = vid
        self.format = format
    }
}
