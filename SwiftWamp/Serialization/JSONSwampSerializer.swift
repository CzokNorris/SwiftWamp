//
//  JSONSwampSerializer.swift
//  Pods
//
//  Created by Yossi Abraham on 21/08/2016.
//
//

import Foundation
import SwiftyJSON

open class JSONSwampSerializer: SwampSerializer {

    public init() {}

    open func pack(_ data: [Any]) -> Data? {
        let json = JSON(data)
        do {
            return try json.rawData()
        }
        catch {
            return nil
        }
    }

    open func unpack(_ data: Data) -> [Any]? {
        if let r = try? JSON(data: data).arrayObject{
            return r
        }
        return nil
    }
}
