//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Donatas on 12.10.21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
