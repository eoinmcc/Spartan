//
//  Device.swift
//  Spartan
//
//  Created by Eoin McCarthy on 8/8/18.
//

/*
 
 The MIT License (MIT)
 Copyright (c) 2017 Dalton Hinterscher
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"),
 to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
 and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR
 ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH
 THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 
 */

import ObjectMapper
/*
 {
 "devices" : [ {
 "id" : "5fbb3ba6aa454b5534c4ba43a8c7e8e45a63ad0e",
 "is_active" : false,
 "is_private_session": true,
 "is_restricted" : false,
 "name" : "My fridge",
 "type" : "Computer",
 "volume_percent" : 100
 } ]
 }*/

public class DeviceObject: Mappable {
    
    public private(set) var id: String!
    public private(set) var isActive: Bool!
    public private(set) var isPrivateSession: Bool!
    public private(set) var isRestricted: Bool!
    public private(set) var name: String!
    public private(set) var type: String!
    public private(set) var volumePercent: Int!
    
    required public init?(map: Map) {
        mapping(map: map)
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        isActive <- map["is_active"]
        isPrivateSession <- map["is_private_session"]
        isRestricted <- map["is_restricted"]
        name <- map["name"]
        type <- map["type"]
        volumePercent <- map["volume_percent"]
    }
}

public class DeviceObjects: Mappable {
    
    public private(set) var deviceObjects: [DeviceObject]!
    
    required public init?(map: Map) {
        mapping(map: map)
    }
    
    public func mapping(map: Map) {
        deviceObjects <- map["devices"]
    }
}
