//
//  HideKeyboardExtension.swift
//  Devnote
//
//  Created by Christian Nocerino on 30/10/22.
//

import SwiftUI

extension View {
    func hideKeyboard(){
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
