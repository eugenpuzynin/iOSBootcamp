//
//  PostData.swift
//  App10 H4X0R News
//
//  Created by Eugen Puzynin on 25.03.22.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
