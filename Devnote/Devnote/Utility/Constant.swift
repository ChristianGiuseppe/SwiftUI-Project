//
//  Constant.swift
//  Devnote
//
//  Created by Christian Nocerino on 29/10/22.
//

import SwiftUI


let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()


var backgroundGradient: LinearGradient{
    return LinearGradient(colors:  [Color.pink, Color.blue], startPoint: .topLeading, endPoint: .bottomTrailing)
}
