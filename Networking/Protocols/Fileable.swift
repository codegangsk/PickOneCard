//
//  Fileable.swift
//  PickOneCard
//
//  Created by Sophie Kim on 2021/08/27.
//

import Foundation

protocol Fileable {
    var name: String { get }
    var fileName: String { get }
    var data: Data { get }
    var mimeType: String { get }
}
