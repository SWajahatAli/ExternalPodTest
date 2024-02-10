//
//  ContentView.swift
//  PodSample
//
//  Created by Syed Wajahat Ali on 09/02/2024.
//

import SwiftUI

public struct BottomSheetView<Content: View>: View {
    let maxHeight: CGFloat
    let minHeight: CGFloat
    let offset: CGFloat
    let content: Content
    
    public var body: some View {
        content
            .frame(maxWidth: .infinity, maxHeight: maxHeight, alignment: .center)
            .background(Color.blue)
            .cornerRadius(16)
            .offset(y: offset)
    }
    
    public init(maxHeight: CGFloat, offset: CGFloat, @ViewBuilder content: () -> Content) {
        self.minHeight = maxHeight
        self.maxHeight = maxHeight
        self.offset = offset
        self.content = content()
    }
}
