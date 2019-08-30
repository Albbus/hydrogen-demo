//
//  BookDetailView.swift
//  swiftui-demo
//
//  Created by quanhua on 2019/8/22.
//  Copyright © 2019 ifanr. All rights reserved.
//

import SwiftUI

struct BookDetailView: View {
    
    var book: Book
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                VStack(alignment: .leading, spacing: 20) {
                    Text(book.name)
                        .font(.system(size: 32))
                        .multilineTextAlignment(.leading)
                    HStack {
                        Text(book.author)
                            .font(.subheadline)
                        Spacer()
                    }
                }
                WebImageView(imageUrl: book.coverUrl)
                    .frame(width: 120, height: 160)
            }
            Text(book.content)
                .multilineTextAlignment(.leading)
            Spacer()
        }
        .padding(EdgeInsets(top: 20, leading: 10, bottom: 0, trailing: 10))
    }
}

#if DEBUG
struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView(book: Book(id: "123", name: "Name", author: "Hua", price: 12, content: "wode", coverUrl: "https://img3.doubanio.com/view/subject/l/public/s1104690.jpg"))
    }
}
#endif
