//By: Sher Shah Rahim

import UIKit

// Dictionaries for three different teams. I will only store Name and Guardian Names here because that's what matters as a final result.
var dragons: [String: String] = [:]
var raptors: [String: String] = [:]
var sharks: [String: String] = [:]
let teams = [dragons, raptors, sharks]

// Dictionaries for all 18 players with their respective data
let joeSmith: [String:String] = ["name":"Joe Smith", "height":"42","hasExperience":"Yes", "guardianName": "Jim and Jan Smith"]
let jilTanner: [String:String] = ["name":"Jill Tanner", "height":"36","hasExperience":"Yes", "guardianName": "Clara Tanner"]
let billBon: [String:String] = ["name":"Bill Bon", "height":"43","hasExperience":"Yes", "guardianName": "Sara and Jenny Bon"]
let evaGordon: [String:String] = ["name":"Eva Gordon", "height":"45","hasExperience":"No", "guardianName": "Wendy and Mike Gordon"]
let mattGill: [String:String] = ["name":"Matt Gill", "height":"40","hasExperience":"No", "guardianName": "Charles and Sylvia Gill"]
let kimmyStein: [String:String] = ["name":"Kimmy Stein", "height":"41","hasExperience":"No", "guardianName": "Bill and Hillary Stein"]
let sammyAdams: [String:String] = ["name":"Sammy Adams", "height":"45","hasExperience":"No", "guardianName": "Jeff Adams"]
let karlSaygan: [String:String] = ["name":"Karl Saygan", "height":"42","hasExperience":"Yes", "guardianName": "Heather Bledsoe"]
let suzaneGreenberg: [String:String] = ["name":"Suzane Greenberg", "height":"44","hasExperience":"Yes", "guardianName": "Henrietta Dumas"]
let salDali: [String:String] = ["name":"Sal Dali", "height":"41","hasExperience":"No", "guardianName": "Gala Dali"]
let joeKavalier: [String:String] = ["name":"Joe Kavalier", "height":"39","hasExperience":"No", "guardianName": "Elaine Kavalier"]
let benFinkelstein: [String:String] = ["name":"Ben Finkelstein", "height":"44","hasExperience":"No", "guardianName": "Aaron and Jill Finkelstein"]
let diegoSoto: [String:String] = ["name":"Diego Soto", "height":"41","hasExperience":"Yes", "guardianName": "Robin and Sarika Soto"]
let chloeAlaska: [String:String] = ["name":"Chloe Alaska", "height":"47","hasExperience":"No", "guardianName": "David and Jamie Alaska"]
let arnoldWillis: [String:String] = ["name":"Arnold Willis", "height":"43","hasExperience":"No", "guardianName": "Claire Willis"]
let philipHelm: [String:String] = ["name":"Phillip Helm", "height":"44","hasExperience":"Yes", "guardianName": "Thomas Helm and Eva Jones"]
let lesClay: [String:String] = ["name":"Les Clay", "height":"42","hasExperience":"Yes", "guardianName": "Wynonna Brown"]
let herschelKrustofski: [String:String] = ["name":"Herschel Krustofski", "height":"45","hasExperience":"Yes", "guardianName": "Hyman and Rachel Krustofski"]

// Array of all 18 Players
let players = [
    joeSmith,
    jilTanner,
    billBon,
    evaGordon,
    mattGill,
    kimmyStein,
    sammyAdams,
    karlSaygan,
    suzaneGreenberg,
    salDali,
    joeKavalier,
    benFinkelstein,
    diegoSoto,
    chloeAlaska,
    arnoldWillis,
    philipHelm,
    lesClay,
    herschelKrustofski
]
// Dictionaries to separate experienced and non-experienced players
var experiencedPlayers: [String:String] = [:]
var nonExperiencedPlayers: [String:String] = [:]

for player in players {
    if player["hasExperience"] == "Yes"{
        experiencedPlayers.updateValue(player["guardianName"]!, forKey: player["name"]!)
        
    } else {
       
        nonExperiencedPlayers.updateValue(player["guardianName"]!, forKey: player["name"]!)
}
}

// Finding out quotas for each team
let dragonPlayersQuota = players.count / teams.count
let raptorsPlayersQuota = players.count / teams.count


// Now time to put users in to all three groups evenly 

for exPlayers in experiencedPlayers {
    if dragons.count < (dragonPlayersQuota / 2) {
        dragons.updateValue(exPlayers.1, forKey: exPlayers.0)
    } else if raptors.count < (raptorsPlayersQuota / 2){
        raptors.updateValue(exPlayers.1, forKey: exPlayers.0)
    } else {
        sharks.updateValue(exPlayers.1, forKey: exPlayers.0)
    }
}

for nonExPlayers in nonExperiencedPlayers {
    if dragons.count < dragonPlayersQuota {
        dragons.updateValue(nonExPlayers.1, forKey: nonExPlayers.0)
    } else if raptors.count < raptorsPlayersQuota {
        raptors.updateValue(nonExPlayers.1, forKey: nonExPlayers.0)
    } else {
        sharks.updateValue(nonExPlayers.1, forKey: nonExPlayers.0)
    }
}

// Finally writing letters to the guardians about the player, team and other details

for dragonPlayer in dragons {
    print("Dear \(dragonPlayer.1), we are glad to inform you that \(dragonPlayer.0) will be playing in team Dragons. The practice time for the team is March 17, 1PM. See you soon.\n")
}

for sharkPlayer in sharks {
    print("Dear \(sharkPlayer.1), we are glad to inform you that \(sharkPlayer.0) will be playing in team Dragons. The practice time for the team is March 17, 1PM. See you soon.\n")
}

for raptorPlayer in raptors {
      print("Dear \(raptorPlayer.1), we are glad to inform you that \(raptorPlayer.0) will be playing in team Dragons. The practice time for the team is March 17, 1PM. See you soon.\n")
}



