import Foundation

enum EmojiSkinTone {
    case light
    case mediumLight
    case medium
    case mediumDark
    case dark
    
    var modifier: String {
        switch self {
        case .light:        return "🏻"
        case .mediumLight:  return "🏼"
        case .medium:       return "🏽"
        case .mediumDark:   return "🏾"
        case .dark:         return "🏿"
        }
    }
}
