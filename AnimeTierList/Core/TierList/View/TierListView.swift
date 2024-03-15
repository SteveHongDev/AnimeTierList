//
//  TierListView.swift
//  AnimeTierList
//
//  Created by 홍성범 on 3/15/24.
//

import SwiftUI
import Kingfisher

struct TierListView: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var isListView = false
    
    let tiers = [
            ("S", ["https://www.themoviedb.org/t/p/w1280/krBHtLnl6zLSmriYp8f7lpLlIoG.jpg"]),
            ("A", ["https://www.themoviedb.org/t/p/w1280/lhMchAa3yhnIZO2D8hTMPJL0fRy.jpg", "https://www.themoviedb.org/t/p/w1280/8v2CVrPNC1pO0osxbia4FopGtLe.jpg"]),
            ("B", ["https://www.themoviedb.org/t/p/w1280/wiXNjJaSSpnhPPa4N6APqpyVNBy.jpg"]),
            ("C", []),
            ("D", ["https://www.themoviedb.org/t/p/w1280/ttcZuM9WU4lTtRP22xa4FOEO6I9.jpg"]),
            ("F", ["https://www.themoviedb.org/t/p/w1280/d5hzkYaO1h7UjH3Q0MRfyGVXjLi.jpg"])
        ]
    
    var body: some View {
        NavigationStack {
            VStack {
                if isListView {
                    List {
                        ForEach(tiers, id: \.0) { tier, animations in
                            Section(header: Text("\(tier)").font(.title3).foregroundStyle(.white)) {
                                ForEach(animations, id: \.self) { animation in
                                    Text(animation)
                                }
                            }
                        }
                    }
                } else {
                    ScrollView {
                        
                        VStack(alignment: .leading) {
                            ForEach(tiers, id: \.0) { tier, animations in
                                HStack(alignment: .center) {
                                    Text("\(tier)")
                                        .fontDesign(.monospaced)
                                        .font(.largeTitle)
                                        .fontWeight(.bold)
                                        .padding(.horizontal, 8)
                                        .padding(.leading, 7)
                                    
                                    ScrollView(.horizontal) {
                                        HStack {
                                            ForEach(animations, id: \.self) { animation in
                                                KFImage(URL(string: animation))
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width: 80, height: 80)
                                                    .cornerRadius(10)
                                            }
                                            
                                            if animations.isEmpty {
                                                Rectangle()
                                                    .foregroundStyle(.clear)
                                                    .frame(height: 80)
                                            }
                                        }
                                    }
                                    .padding(.horizontal)
                                }
                            }
                        }
                        .padding(.top)
                    }
                }
            }
            .navigationTitle("티어 리스트")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        isListView.toggle()
                    } label: {
                        Image(systemName: "list.star")
                            .foregroundStyle(colorScheme == .dark ? .white : .black)
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "magnifyingglass")
                            .foregroundStyle(colorScheme == .dark ? .white : .black)
                    }
                }
            }
        }
    }
}

#Preview {
    TierListView()
}
