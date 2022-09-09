import Foundation

public enum EmojiGender: CaseIterable {
    case male
    case female
    case neutral
    
    public var name: String {
        switch self {
        case .male:
            return "Male"
        case .female:
            return "Female"
        case .neutral:
            return "Neutral"
        }
    }
}
