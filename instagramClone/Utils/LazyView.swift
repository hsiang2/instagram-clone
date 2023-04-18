//
//  LazyView.swift
//  instagramClone
//
//  Created by 蔡相襄 on 2023/3/6.
//

import SwiftUI

struct LazyView<Content: View>: View {
    let build: () -> Content
    
    init(_ build: @autoclosure @escaping() -> Content) {
        self.build = build
    }
    
    var body: Content {
        build()
    }
}
