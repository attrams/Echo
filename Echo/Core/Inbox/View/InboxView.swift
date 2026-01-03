//
//  InboxView.swift
//  Echo
//
//  Created by Attrams on 01/01/2026.
//

import SwiftUI

struct InboxView: View {
    @State private var viewModel = InboxViewModel()

    var body: some View {
        NavigationStack {
            GeometryReader { proxy in
                ZStack(alignment: .bottomTrailing) {
                    List {
                        ForEach(0..<5) { _ in
                            InboxRowView(width: proxy.size.width)
                        }
                    }
                    .listStyle(PlainListStyle())

                    Button(action: {
                        viewModel.showNewMessage.toggle()
                    }) {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(.darkGray))
                            .frame(width: 50, height: 50)
                            .padding()
                            .overlay {
                                Image(systemName: "plus.bubble.fill")
                                    .foregroundStyle(.white)
                            }

                    }
                }
                .fullScreenCover(isPresented: $viewModel.showNewMessage) {
                    NewMessageView()
                }
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Text("Echo")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .fixedSize(horizontal: true, vertical: false)
                            .foregroundStyle(.white)
                            .navigationBarColor(
                                backgroundColor: Color(.darkGray)
                            )
                    }
                    .sharedBackgroundVisibility(.hidden)

                    ToolbarItem(placement: .topBarTrailing) {
                        HStack(spacing: 24) {
                            Image(systemName: "camera")
                            Image(systemName: "magnifyingglass")
                            Image(systemName: "ellipsis")
                        }
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                    }
                    .sharedBackgroundVisibility(.hidden)
                }
            }
        }
    }
}

#Preview {
    InboxView()
}
