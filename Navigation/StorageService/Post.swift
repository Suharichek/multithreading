//
//  Post.swift
//  Navigation
//
//  Created by Suharik on 11.03.2022.
//

import Foundation
import UIKit

public struct Post {
    public var author, description: String
    public var image: UIImage
    public var likes, views: Int
    
    public static func createPosts() -> [Post] {
        var lenta = [Post]()
        lenta.append(Post (author: "Finn", description: "Super cool post p.1", image: UIImage(named: "Finn")!, likes: 200, views: 4000))
        lenta.append(Post (author: "Jake", description: "Super cool post p.2", image: UIImage(named: "Jake")!, likes: 1000, views: 5000))
        lenta.append(Post (author: "Princess", description: "Super cool post p.3", image: UIImage(named: "Princess")!, likes: 150, views: 6000))
        lenta.append(Post (author: "BMO", description: "Super cool post p.4", image: UIImage(named: "BMO")!, likes: 10, views: 300))
        return lenta
    }
}



