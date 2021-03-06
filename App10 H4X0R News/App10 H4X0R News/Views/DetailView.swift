//
//  DetailView.swift
//  App10 H4X0R News
//
//  Created by Eugen Puzynin on 25.03.22.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
