//
//  ProfileViewModel.swift
//  Messenger
//
//  Created by Zeynep Kılıç on 11.03.2026.
//

import Foundation
import PhotosUI
import Combine
import SwiftUI

class ProfileViewModel: ObservableObject {
    
    @Published var selectedItem: PhotosPickerItem? {
        didSet { Task {try await loadImage() } }
    }
    
    @Published var profileImage: Image?
    
    func loadImage() async throws {
        guard let item = selectedItem else { return }
        guard let imageData = try await item.loadTransferable(type: Data.self) else { return }
        guard let uiImage = UIImage(data: imageData) else { return }
        
        self.profileImage = Image(uiImage: uiImage)
    }
}

