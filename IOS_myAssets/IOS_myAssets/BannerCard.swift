//
//  BannerCard.swift
//  IOS_myAssets
//
//  Created by Junseok Lee on 2021/10/29.
//

import SwiftUI

struct BannerCard: View {
    var banner: AssetBanner
    
    var body: some View {
        Color(banner.backgroundColor)
            .overlay(
                VStack{
                    Text(banner.title)
                        .font(.title)
                    Text(banner.description)
                        .font(.subheadline)
                }
            )
    }
}

struct BannerCard_Previews: PreviewProvider {
    static var previews: some View {
        let banner0 = AssetBanner(title: "공지사항", description: "추가된 공지사항을 확인하세요", backgroundColor: .red)
        BannerCard(banner: banner0)
    }
}
