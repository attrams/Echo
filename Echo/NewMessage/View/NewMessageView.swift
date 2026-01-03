//
//  NewMessageView.swift
//  Echo
//
//  Created by Attrams on 03/01/2026.
//

import SwiftUI

struct NewMessageView: View {
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    ContactView(
                        imageName: "person.2.circle.fill",
                        title: "New group"
                    )
                    ContactView(
                        imageName: "person.circle.fill",
                        title: "New contact"
                    )
                    ContactView(
                        imageName: "shared.with.you.circle.fill",
                        title: "New community"
                    )
                }
                .padding(.top)

                Text("Contacts on Whatsapp")
                    .foregroundStyle(Color(.darkGray))
                    .padding(.vertical)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.footnote)
                    .fontWeight(.semibold)

                ForEach(0..<9) { _ in
                    HStack {
                        CircularProfileImageView(
                            size: .small,
                            user: User.MOCK_USER
                        )

                        VStack(alignment: .leading) {
                            Text(User.MOCK_USER.fullname)
                                .font(.subheadline)
                                .fontWeight(.semibold)

                            Text("Hi there! I am using WhatsApp")
                                .font(.footnote)
                                .foregroundStyle(.gray)
                        }

                        Spacer()
                    }
                    .padding(.bottom, 20)

                }
            }
            .padding(.horizontal)

            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    HStack(spacing: 16) {
                        Button(action: {
                            dismiss()
                        }) {
                            Image(systemName: "arrow.backward")
                        }

                        VStack(alignment: .leading) {
                            Text("Select contact")
                                .font(.subheadline)
                                .fontWeight(.semibold)

                            Text("2 contacts")
                                .font(.caption2)
                        }
                        .fixedSize(horizontal: true, vertical: false)
                    }
                    .foregroundStyle(.white)
                }
                .sharedBackgroundVisibility(.hidden)

                ToolbarItem(placement: .topBarTrailing) {
                    HStack(spacing: 24) {
                        Image(systemName: "magnifyingglass")
                        Image(systemName: "ellipsis")
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                }
                .sharedBackgroundVisibility(.hidden)
            }
        }
    }
}

#Preview {
    NewMessageView()
}
