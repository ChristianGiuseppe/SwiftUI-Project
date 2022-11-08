//
//  DevnoteWidgetBundle.swift
//  DevnoteWidget
//
//  Created by Christian Nocerino on 08/11/22.
//

import WidgetKit
import SwiftUI

@main
struct DevnoteWidgetBundle: WidgetBundle {
    var body: some Widget {
        DevnoteWidget()
        DevnoteWidgetLiveActivity()
    }
}
