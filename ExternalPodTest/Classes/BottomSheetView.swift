//
//  ContentView.swift
//  PodSample
//
//  Created by Syed Wajahat Ali on 09/02/2024.
//

import SwiftUI

public struct BottomSheetView<Content: View>: View {
    typealias Body = Never
    var body: Never { fatalError() }

    @Binding var isOpen: Bool

    let maxHeight: CGFloat
    let minHeight: CGFloat
    let content: Content

    init(isOpen: Binding<Bool>, maxHeight: CGFloat, ratio: CGFloat, @ViewBuilder content: () -> Content) {
        self.minHeight = maxHeight * ratio
        self.maxHeight = maxHeight
        self.content = content()
        self._isOpen = isOpen
    }
}
