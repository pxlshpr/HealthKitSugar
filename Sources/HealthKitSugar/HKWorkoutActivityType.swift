import HealthKit

extension HKWorkoutActivityType: CaseIterable {
    public static var allCases: [HKWorkoutActivityType] {
        [
            .americanFootball,
            .archery,
            .australianFootball,
            .badminton,
            .baseball,
            .basketball,
            .bowling,
            .boxing,
            .climbing,
            .crossTraining,
            .curling,
            .cycling,
            .dance,
            .danceInspiredTraining,
            .elliptical,
            .equestrianSports,
            .fencing,
            .fishing,
            .functionalStrengthTraining,
            .golf,
            .gymnastics,
            .handball,
            .hiking,
            .hockey,
            .hunting,
            .lacrosse,
            .martialArts,
            .mindAndBody,
            .mixedMetabolicCardioTraining,
            .paddleSports,
            .play,
            .preparationAndRecovery,
            .racquetball,
            .rowing,
            .rugby,
            .running,
            .sailing,
            .skatingSports,
            .snowSports,
            .soccer,
            .softball,
            .squash,
            .stairClimbing,
            .surfingSports,
            .swimming,
            .tableTennis,
            .tennis,
            .trackAndField,
            .traditionalStrengthTraining,
            .volleyball,
            .walking,
            .waterFitness,
            .waterPolo,
            .waterSports,
            .wrestling,
            .yoga,
            .barre,
            .coreTraining,
            .crossCountrySkiing,
            .downhillSkiing,
            .flexibility,
            .highIntensityIntervalTraining,
            .jumpRope,
            .kickboxing,
            .pilates,
            .snowboarding,
            .stairs,
            .stepTraining,
            .wheelchairWalkPace,
            .wheelchairRunPace,
            .taiChi,
            .mixedCardio,
            .handCycling,
            .discSports,
            .fitnessGaming,
            .cricket,
            .cardioDance,
            .socialDance,
            .pickleball,
            .cooldown,
            .swimBikeRun,
            .transition,
            .other
        ]
    }
}

extension HKWorkoutActivityType {
    
    /*
     Simple mapping of available workout types to a human readable name.
     */
    public var name: String {
        switch self {
        case .americanFootball:                 return "American Football"
        case .archery:                          return "Archery"
        case .australianFootball:               return "Australian Football"
        case .badminton:                        return "Badminton"
        case .baseball:                         return "Baseball"
        case .basketball:                       return "Basketball"
        case .bowling:                          return "Bowling"
        case .boxing:                           return "Boxing"
        case .climbing:                         return "Climbing"
        case .crossTraining:                    return "Cross Training"
        case .curling:                          return "Curling"
        case .cycling:                          return "Cycling"
        case .dance:                            return "Dance"
        case .danceInspiredTraining:            return "Dance Inspired Training"
        case .elliptical:                       return "Elliptical"
        case .equestrianSports:                 return "Equestrian Sports"
        case .fencing:                          return "Fencing"
        case .fishing:                          return "Fishing"
        case .functionalStrengthTraining:       return "Strength Training (Functional)"
        case .golf:                             return "Golf"
        case .gymnastics:                       return "Gymnastics"
        case .handball:                         return "Handball"
        case .hiking:                           return "Hiking"
        case .hockey:                           return "Hockey"
        case .hunting:                          return "Hunting"
        case .lacrosse:                         return "Lacrosse"
        case .martialArts:                      return "Martial Arts"
        case .mindAndBody:                      return "Mind and Body"
        case .mixedMetabolicCardioTraining:     return "Mixed Metabolic Cardio Training"
        case .paddleSports:                     return "Paddle Sports"
        case .play:                             return "Play"
        case .preparationAndRecovery:           return "Preparation and Recovery"
        case .racquetball:                      return "Racquetball"
        case .rowing:                           return "Rowing"
        case .rugby:                            return "Rugby"
        case .running:                          return "Running"
        case .sailing:                          return "Sailing"
        case .skatingSports:                    return "Skating Sports"
        case .snowSports:                       return "Snow Sports"
        case .soccer:                           return "Soccer"
        case .softball:                         return "Softball"
        case .squash:                           return "Squash"
        case .stairClimbing:                    return "Stair Climbing"
        case .surfingSports:                    return "Surfing Sports"
        case .swimming:                         return "Swimming"
        case .tableTennis:                      return "Table Tennis"
        case .tennis:                           return "Tennis"
        case .trackAndField:                    return "Track and Field"
        case .traditionalStrengthTraining:      return "Strength Training"
        case .volleyball:                       return "Volleyball"
        case .walking:                          return "Walking"
        case .waterFitness:                     return "Water Fitness"
        case .waterPolo:                        return "Water Polo"
        case .waterSports:                      return "Water Sports"
        case .wrestling:                        return "Wrestling"
        case .yoga:                             return "Yoga"
            
            // iOS 10
        case .barre:                            return "Barre"
        case .coreTraining:                     return "Core Training"
        case .crossCountrySkiing:               return "Cross Country Skiing"
        case .downhillSkiing:                   return "Downhill Skiing"
        case .flexibility:                      return "Flexibility"
        case .highIntensityIntervalTraining:    return "High Intensity Interval Training"
        case .jumpRope:                         return "Jump Rope"
        case .kickboxing:                       return "Kickboxing"
        case .pilates:                          return "Pilates"
        case .snowboarding:                     return "Snowboarding"
        case .stairs:                           return "Stairs"
        case .stepTraining:                     return "Step Training"
        case .wheelchairWalkPace:               return "Wheelchair Walk Pace"
        case .wheelchairRunPace:                return "Wheelchair Run Pace"
            
            // iOS 11
        case .taiChi:                           return "Tai Chi"
        case .mixedCardio:                      return "Mixed Cardio"
        case .handCycling:                      return "Hand Cycling"
            
            // iOS 13
        case .discSports:                       return "Disc Sports"
        case .fitnessGaming:                    return "Fitness Gaming"
            
            // iOS 13+
        case .cricket:                          return "Cricket"
        case .cardioDance:                      return "Cardio Dance"
        case .socialDance:                      return "Social Dance"
        case .pickleball:                       return "Pickleball"
        case .cooldown:                         return "Cooldown"
        case .swimBikeRun:                      return "Swim/Bike/Run"
        case .transition:                       return "Transition"
        case .other:                            return "Other"
            
            // Catch-all
        @unknown default:                       return "Other"
            //        @unknown default:                   return "Other: \(self.rawValue)"
        }
    }
    
    /*
     Additional mapping for common name for activity types where appropriate.
     */
    var commonName: String {
        switch self {
        case .highIntensityIntervalTraining: return "HIIT"
        default: return name
        }
    }
    
    /*
     Mapping of available activity types to emojis, where an appropriate gender-agnostic emoji is available.
     */
    public var emoji: String? {
        emoji()
    }
    
    public var genderAgnosticEmoji: String? {
        switch self {
        case .americanFootball:             return "🏈"
        case .archery:                      return "🏹"
        case .badminton:                    return "🏸"
        case .baseball:                     return "⚾️"
        case .bowling:                      return "🎳"
        case .boxing:                       return "🥊"
        case .curling:                      return "🥌"
        case .fencing:                      return "🤺"
        case .fishing:                      return "🎣"
        case .hiking:                       return "🥾"
        case .hockey:                       return "🏒"
        case .lacrosse:                     return "🥍"
        case .martialArts:                  return "🥋"
        case .mixedMetabolicCardioTraining: return "❤️"
        case .paddleSports:                 return "🛶"
        case .rugby:                        return "🏉"
        case .sailing:                      return "⛵️"
        case .skatingSports:                return "⛸"
        case .snowSports:                   return "🛷"
        case .soccer:                       return "⚽️"
        case .softball:                     return "🥎"
        case .tableTennis:                  return "🏓"
        case .tennis:                       return "🎾"
        case .volleyball:                   return "🏐"
        case .waterFitness:                 return "💧"
        case .waterSports:                  return "🚤"
            
            // iOS 10
        case .barre:                        return "🥿"
        case .crossCountrySkiing:           return "⛷"
        case .downhillSkiing:               return "⛷"
        case .kickboxing:                   return "🥋"
        case .snowboarding:                 return "🏂"
            
            // iOS 11
        case .mixedCardio:                  return "❤️"
            
            // iOS 13
        case .discSports:                   return "🥏"
        case .fitnessGaming:                return "🎮"
            
            // Catch-all
        case .australianFootball:           return "🏉"
            
        case .cricket:                      return "🏏"
        case .elliptical:                   return "❤️"
        case .hunting:                      return "🏹"
        case .racquetball:                  return "❤️"
        case .squash:                       return "❤️"
        case .highIntensityIntervalTraining:return "❤️"
        case .jumpRope:                     return "❤️"
        case .handCycling:                  return "🚲"
        case .pickleball:                   return "🏓"
        case .swimBikeRun:                  return "❤️"
        case .transition:                   return "❤️"

        @unknown default:                   return nil
        }
    }
    
    public func emoji(for gender: EmojiGender = .neutral, withSkinTone skinTone: EmojiSkinTone? = nil) -> String? {
        guard let emoji = emoji(for: gender) else {
            return nil
        }
        guard emoji.supportsSkinTone, let skinTone = skinTone else {
            return emoji
        }
        return emoji.applySkinTone(skinTone)
    }
    
    /*
     Mapping of available activity types to appropriate gender specific emojies.
     
     If a gender neutral symbol is available this simply returns the value of `associatedEmoji`.
     */
    public func emoji(for gender: EmojiGender = .neutral) -> String? {
        switch self {
        case .climbing:
            switch gender {
            case .female:                   return "🧗‍♀️"
            case .neutral:                  return "🧗"
            case .male:                     return "🧗‍♂️"
            }
        case .basketball:
            switch gender {
            case .female:                   return "⛹️‍♀️"
            case .neutral:                  return "⛹️"
            case .male:                     return "⛹️‍♂️"
            }
        case .cycling:
            switch gender {
            case .female:                   return "🚴‍♀️"
            case .neutral:                  return "🚴"
            case .male:                     return "🚴‍♂️"
            }
        case .dance, .danceInspiredTraining, .cardioDance, .socialDance:
            switch gender {
            case .female:                   return "💃"
            case .neutral:                  return "👯"
            case .male:                     return "🕺"
            }
        case .equestrianSports:
            return "🏇"
        case .golf:
            switch gender {
            case .female:                   return "🏌️‍♀️"
            case .neutral:                  return "🏌️"
            case .male:                     return "🏌️‍♂️"
            }
        case .traditionalStrengthTraining:
            switch gender {
            case .female:                   return "🏋️‍♀️"
            case .neutral:                  return "🏋️"
            case .male:                     return "🏋️‍♂️"
            }
        case .rowing:
            switch gender {
            case .female:                   return "🚣‍♀️"
            case .neutral:                  return "🚣"
            case .male:                     return "🚣‍♂️"
            }
        case .gymnastics:
            switch gender {
            case .female:                   return "🤸‍♀️"
            case .neutral:                  return "🤸"
            case .male:                     return "🤸‍♂️"
            }
        case .handball, .play:
            switch gender {
            case .female:                   return "🤾‍♀️"
            case .neutral:                  return "🤾"
            case .male:                     return "🤾‍♂️"
            }
        case .mindAndBody, .yoga, .taiChi:
            switch gender {
            case .female:                   return "🧘‍♀️"
            case .neutral:                  return "🧘"
            case .male:                     return "🧘‍♂️"
            }
        case .preparationAndRecovery, .flexibility, .cooldown, .pilates:
            switch gender {
            case .female:                   return "🙆‍♀️"
            case .neutral:                  return "🙆"
            case .male:                     return "🙆‍♂️"
            }
        case .running, .trackAndField:
            switch gender {
            case .female:                   return "🏃‍♀️"
            case .neutral:                  return "🏃"
            case .male:                     return "🏃‍♂️"
            }
        case .surfingSports:
            switch gender {
            case .female:                   return "🏄‍♀️"
            case .neutral:                  return "🏄"
            case .male:                     return "🏄‍♂️"
            }
        case .stairClimbing, .stairs, .stepTraining:
            return "🦵"
        case .crossTraining, .functionalStrengthTraining:
            return "💪"
        case .swimming:
            switch gender {
            case .female:                   return "🏊‍♀️"
            case .neutral:                  return "🏊"
            case .male:                     return "🏊‍♂️"
            }
        case .coreTraining:
            switch gender {
            case .female:                   return "🧎‍♀️"
            case .neutral:                  return "🧎"
            case .male:                     return "🧎‍♂️"
            }
        case .walking:
            switch gender {
            case .female:                   return "🚶‍♀️"
            case .neutral:                  return "🚶"
            case .male:                     return "🚶‍♂️"
            }
        case .waterPolo:
            switch gender {
            case .female:                   return "🤽‍♀️"
            case .neutral:                  return "🤽"
            case .male:                     return "🤽‍♂️"
            }
        case .wrestling:
            switch gender {
            case .female:                   return "🤼‍♀️"
            case .neutral:                  return "🤼"
            case .male:                     return "🤼‍♂️"
            }
        case .wheelchairRunPace, .wheelchairWalkPace:
            switch gender {
            case .female:                   return "👩‍🦽"
            case .neutral:                  return "🧑‍🦽"
            case .male:                     return "👨‍🦽"
            }
        default:
            switch gender {
            case .female:                   return "🏃‍♀️"
            case .neutral:                  return "🏃"
            case .male:                     return "🏃‍♂️"
            }
        }
    }
}
