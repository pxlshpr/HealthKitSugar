import HealthKit

public extension String {
    var workoutActivityType: HKWorkoutActivityType? {
        if self == "Traditional Strength Training" {
            return .traditionalStrengthTraining
        }
        for activityType in HKWorkoutActivityType.allCases {
            if self == activityType.name
                || self == "Other: \(activityType.rawValue)"
            {
                return activityType
            }
        }
        return nil
    }
}

//TODO: ➡️ Move to SwiftSugar
public extension String {
    func applySkinTone(_ skinTone: EmojiSkinTone) -> String {
        guard let modifier = skinTone.modifier,
              modifier.count == 1 && self.count > 0 else {
            return self
        }
        
        let minTone = Unicode.Scalar(0x1F3FB)!
        let maxTone = Unicode.Scalar(0x1F3FF)!
        guard let toneChar = modifier.unicodeScalars.first, minTone...maxTone ~= toneChar else { return self }

        var scalars = Array(self.unicodeScalars)
        // Remove any existing tone
        if scalars.count >= 2 && minTone...maxTone ~= scalars[1] {
            scalars.remove(at: 1)
        }
        // Now add the new tone
        scalars.insert(toneChar, at: 1)

        return String(String.UnicodeScalarView(scalars))
    }
    
    var supportsSkinTone: Bool {
        guard count == 1 else {
            return false
        }
        return unicodeScalars.first?.properties.isEmojiModifierBase ?? false
    }
}
