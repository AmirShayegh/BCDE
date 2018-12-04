//
//  Opportunity.swift
//  starter
//
//  Created by Amir Shayegh on 2018-12-03.
//  Copyright © 2018 shayegh.ca. All rights reserved.
//

import Foundation
import Realm
import RealmSwift
import SwiftyJSON
import Extended

protocol CustomRealm {
    var localId: String { get set }
    var remoteId: String { get set }

    func set(from: [String:Any]) -> Void
}

class Opportunity: Object, CustomRealm {

    @objc dynamic var localId: String = {
        return UUID().uuidString
    }()

    override class func primaryKey() -> String? {
        return "localId"
    }

    @objc dynamic var remoteId: String = ""

    func set(from: [String : Any]) {

    }
}
