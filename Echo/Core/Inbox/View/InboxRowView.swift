//
//  InboxRowView.swift
//  Echo
//
//  Created by Attrams on 03/01/2026.
//

import SwiftUI

struct InboxRowView: View {
    private var width:CGFloat
    
    init(width: CGFloat) {
        self.width = width
    }
    
    var body: some View {
        HStack(spacing: 12) {
            CircularProfileImageView(size: .medium, user: User.MOCK_USER)
            
            VStack(alignment: .leading, spacing: 4){
                Text("Wanda Maximoff")
                    .fontWeight(.semibold)
                Text("Sent video")
                    .foregroundStyle(.gray)
                    .lineLimit(2)
                    .frame(maxWidth: width - 100, alignment: .leading)
            }
            .font(.subheadline)
            
            HStack{
                Text("Yesterday")
                Image(systemName: "chevron.right")
            }
            .font(.footnote)
            .foregroundStyle(.gray)
        }
        .frame(height: 72)
    }
}

#Preview {
    InboxRowView(width: 300)
}
