//
//  ContentView.swift
//  PodSample
//
//  Created by Syed Wajahat Ali on 09/02/2024.
//

import SwiftUI

public struct BottomSheetView<Content: View>: View {
    @Binding var isOpen: Bool

    let maxHeight: CGFloat
    let minHeight: CGFloat
    let content: Content
    
    public var body: some View {
        content
            .frame(maxWidth: .infinity, maxHeight: maxHeight)
            .background(Color.white) // Adjust as needed
            .cornerRadius(16) // Adjust as needed
            .offset(y: isOpen ? 0 : maxHeight) // Adjust as needed
            .animation(.default) // Adjust animation as needed
    }
    
    public init(isOpen: Binding<Bool>, maxHeight: CGFloat, ratio: CGFloat, @ViewBuilder content: () -> Content) {
        self.minHeight = maxHeight * ratio
        self.maxHeight = maxHeight
        self.content = content()
        self._isOpen = isOpen
    }
}
