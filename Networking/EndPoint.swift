//
//  EndPoint.swift
//  PickOneCard
//
//  Created by Sophie Kim on 2021/08/26.
//

import Foundation

struct EndPoint: EndPointable {
    let baseURL: URL
    var httpMethod: HTTPMethod
    let path: String
    let parameters: Parameters?
    let arrayOfParameters: [Parameters]?
    let headers: HTTPHeaders?
    let files: Files?
    
    init(
        baseURL: URL,
        httpMethod: HTTPMethod,
        path: String,
        headers: HTTPHeaders? = nil,
        parameters: Parameters? = nil,
        arrayOfParameters: [Parameters]? = nil,
        files: Files? = nil
    ) {
        self.baseURL = baseURL
        self.httpMethod = httpMethod
        self.path = path
        self.parameters = parameters
        self.arrayOfParameters = arrayOfParameters
        self.headers = headers
        self.files = files
    }
}
