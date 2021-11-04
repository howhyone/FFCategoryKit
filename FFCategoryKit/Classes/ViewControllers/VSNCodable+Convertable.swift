//
//  VSNCodable+Convertable.swift
//  Alamofire
//
//  Created by ll on 2018/9/13.
//


public protocol Convertable: Codable {
    
}

extension Convertable {
    /// 直接将Struct或Class转成Dictionary
    public func convertToDict() -> Dictionary<String, Any>? {
        var dict: Dictionary<String, Any>? = nil
        do {
            let encoder = JSONEncoder()
            let data = try encoder.encode(self)
            dict = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as? Dictionary<String, Any>
        } catch {
            print(error)
        }
        return dict
    }
}
