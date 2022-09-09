import Foundation

public enum EmojiSkinTone: CaseIterable {
    case none
    case light
    case mediumLight
    case medium
    case mediumDark
    case dark
    
    public var name: String {
        switch self {
        case .none:
            return "None"
        case .light:
            return "Light"
        case .mediumLight:
            return "Medium Light"
        case .medium:
            return "Medium"
        case .mediumDark:
            return "Medium Dark"
        case .dark:
            return "Dark"
        }
    }
    
    public var modifier: String? {
        switch self {
        case .none:         return nil
        case .light:        return "🏻"
        case .mediumLight:  return "🏼"
        case .medium:       return "🏽"
        case .mediumDark:   return "🏾"
        case .dark:         return "🏿"
        }
    }    
}
