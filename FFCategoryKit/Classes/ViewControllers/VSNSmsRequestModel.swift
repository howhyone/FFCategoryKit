//
//  VSNSmsRequestModel.swift
//  Alamofire
//
//  Created by ll on 2018/9/18.
//


public struct VSNSmsReq: Convertable {
    var phone: String?
    
    public init(_ phone: String) {
        self.phone = phone
    }
}
