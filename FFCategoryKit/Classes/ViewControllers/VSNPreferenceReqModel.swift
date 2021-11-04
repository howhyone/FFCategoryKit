//
//  VSNPreferenceReq.swift
//  Alamofire
//
//  Created by ll on 2018/9/27.
//

public struct VSNTagsReq: Convertable {
    var combination: String?
    
    public init(combination: String) {
        self.combination = combination
    }
}

public struct VSNPreferencesReq: Convertable {
    var combination: String?
    var tags: String?

    public init(combination: String, tags: String) {
        self.combination = combination
        self.tags = tags
    }
}
