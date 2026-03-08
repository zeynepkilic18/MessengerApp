//
//  InboxView.swift
//  Messenger
//
//  Created by Zeynep Kılıç on 7.03.2026.
//

import SwiftUI

struct InboxView: View {

    
    var body: some View {
        NavigationStack {
            ScrollView {
                ActiveNowView()
                
                List {
                    ForEach(0 ... 10, id:\.self) { message in
                        InboxRowView()
                    }
                }
                .listStyle(PlainListStyle())
                .frame(height: UIScreen.main.bounds.height - 120)
            }
            .background(Color.white)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack(spacing: 8) {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .frame(width: 32, height: 32)
                            .foregroundColor(Color(.systemGray))
                        
                        Text("Chats")
                            .font(.title)
                            .fontWeight(.semibold)
                            .fixedSize()
                        
                    }
                    .padding(.horizontal, 10)
                    
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        print("Show new message view")
                    } label: {
                        Image(systemName: "square.and.pencil.circle.fill")
                            .resizable()
                            .frame(width: 32, height: 32)
                            .foregroundStyle(.black, Color(.systemGray5))
                    }
                }
            }
        }
    }
}

#Preview {
    InboxView()
}
