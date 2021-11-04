//
//  NoviceRequestModel.swift
//  Alamofire
//
//  Created by ytx on 2019/8/12.
//

import Foundation

public struct NoviceAnswerModel: Convertable {
    
    public struct Option: Convertable {
        public var id: Int //question.id
        public var oid: Int //question.options[selected].oid
        public init(id: Int, oid: Int) {
            self.id = id
            self.oid = oid
        }
    }
    public var answer: [Option]
    
    public init(answer: [Option]) {
        self.answer = answer
    }
}

