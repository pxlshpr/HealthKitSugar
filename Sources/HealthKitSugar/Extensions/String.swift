import HealthKit

extension String {
    func applySkinTone(_ skinTone: EmojiSkinTone) -> String {
        let modifier = skinTone.modifier
        guard modifier.count == 1 && self.count > 0 else { return self }
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
}

extension String {
    var workoutActivityType: HKWorkoutActivityType? {
        .archery
    }
}