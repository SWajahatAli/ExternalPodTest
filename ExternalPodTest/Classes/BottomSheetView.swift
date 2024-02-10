//
//  ContentView.swift
//  PodSample
//
//  Created by Syed Wajahat Ali on 09/02/2024.
//

import SwiftUI

public struct BottomSheetView<Content: View>: View {
    public typealias Body = Never
    public var body: Never { fatalError() }

    @Binding var isOpen: Bool

    let maxHeight: CGFloat
    let minHeight: CGFloat
    let content: Content

    public init(isOpen: Binding<Bool>, maxHeight: CGFloat, ratio: CGFloat, @ViewBuilder content: () -> Content) {
        self.minHeight = maxHeight * ratio
        self.maxHeight = maxHeight
        self.content = content()
        self._isOpen = isOpen
    }
}
