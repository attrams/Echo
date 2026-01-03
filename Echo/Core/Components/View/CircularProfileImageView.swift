//
//  CircularProfileImageView.swift
//  Echo
//
//  Created by Attrams on 03/01/2026.
//

import SwiftUI

enum ProfileImageSize {
    case xxsmall
    case xsmall
    case small
    case medium
    case large
    case xlarge
    case xxlarge

    var dimension: CGFloat {
        switch self {
        case .xxsmall:
            return 28
        case .xsmall:
            return 32
        case .small:
            return 40
        case .medium:
            return 56
        case .large:
            return 64
        case .xlarge:
            return 80
        case .xxlarge:
            return 120
        }
    }
}

struct CircularProfileImageView: View {
    private let size: ProfileImageSize
    var user: User?

    init(size: ProfileImageSize, user: User?) {
        self.size = size
        self.user = user
    }

    var body: some View {
        if let profileImageUrl = user?.profileImageUrl {
            Image(profileImageUrl)
                .resizable()
                .frame(width: size.dimension, height: size.dimension)
                .scaledToFill()
                .clipShape(Circle())
        }
        else {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: size.dimension, height: size.dimension)
                .foregroundStyle(Color(.systemGray4))
        }
    }
}

#Preview {
    CircularProfileImageView(size: .medium, user: User.MOCK_USER)
}
