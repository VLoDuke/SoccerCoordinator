// Soccer League Coordinator by Peter Lai.

import Foundation


// create a dictionary for each player's personal information.


let joeSmith = ["Name" : "Joe Smith",
                "Height" : "42",
                "Soccer Experience" : "YES",
                "Guardian Name(s)" : "Jim and Jan Smith"]

let jillTanner = ["Name" : "Jill Tanner",
                  "Height" : "36",
                  "Soccer Experience" : "YES",
                  "Guardian Name(s)" : "Clara Tanner"]

let billBon = ["Name" : "Bill Bon",
               "Height" : "43",
               "Soccer Experience" : "YES",
               "Guardian Name(s)" : "Sara and Jenny Bon"]

let evaGordon = ["Name" : "Eva Gordon",
                 "Height" : "45",
                 "Soccer Experience" : "NO",
                 "Guardian Name(s)" : "Wendy and Mike Gordon"]

let mattGill = ["Name" : "Matt Gill",
                "Height" : "40",
                "Soccer Experience" : "NO",
                "Guardian Name(s)" : "Charles and Sylvia Gill"]

let kimmyStein = ["Name" : "Kimmy Stein",
                  "Height" : "41",
                  "Soccer Experience" : "NO",
                  "Guardian Name(s)" : "Bill and Hillary Stein"]

let sammyAdams = ["Name" : "Sammy Adams",
                  "Height" : "45",
                  "Soccer Experience" : "NO",
                  "Guardian Name(s)" : "Jeff Adams"]

let karlSaygan = ["Name" : "Karl Saygan",
                  "Height" : "42",
                  "Soccer Experience" : "YES",
                  "Guardian Name(s)" : "Heather Bledsoe"]

let suzaneGreenberg = ["Name" : "Suzane Greenberg",
                       "Height" : "44",
                       "Soccer Experience" : "YES",
                       "Guardian Name(s)" : "Henrietta Dumas"]

let salDali = ["Name" : "Sal Dali",
               "Height" : "41",
               "Soccer Experience" : "NO",
               "Guardian Name(s)" : "Gala Dali"]

let joeKavalier = ["Name" : "Joe Kavalier",
                   "Height" : "39",
                   "Soccer Experience" : "NO",
                   "Guardian Name(s)" : "Sam and Elaine Kavalier"]

let benFinkelstein = ["Name" : "Ben Finkelstein",
                      "Height" : "44",
                      "Soccer Experience" : "NO",
                      "Guardian Name(s)" : "Aaron and Jill Finkelstein"]

let diegoSoto = ["Name" : "Diego Soto",
                 "Height" : "41",
                 "Soccer Experience" : "YES",
                 "Guardian Name(s)" : "Robin and Sarika Soto"]

let chloeAlaska = ["Name" : "Chloe Alaska",
                   "Height" : "47",
                   "Soccer Experience" : "NO",
                   "Guardian Name(s)" : "David and Jamie Alaska"]

let arnoldWillis = ["Name" : "Arnold Willis",
                    "Height" : "43",
                    "Soccer Experience" : "NO",
                    "Guardian Name(s)" : "Claire Willis"]

let phillipHelm = ["Name" : "Phillip Helm",
                   "Height" : "44",
                   "Soccer Experience" : "YES",
                   "Guardian Name(s)" : "Thomas Helm and Eva Jones"]

let lesClay = ["Name" : "Les Clay",
               "Height" : "42",
               "Soccer Experience" : "YES",
               "Guardian Name(s)" : "Wynonna Brown"]

let herschelKrustofski = ["Name" : "Herschel Krustofski",
                          "Height" : "45",
                          "Soccer Experience" : "YES",
                          "Guardian Name(s)" : "Hyman and Rachel Krustofski"]



// put the list of players into an array.


var players = [joeSmith, jillTanner, billBon, evaGordon, mattGill, kimmyStein,
               sammyAdams, karlSaygan, suzaneGreenberg, salDali, joeKavalier, benFinkelstein,
               diegoSoto, chloeAlaska, arnoldWillis, phillipHelm, lesClay, herschelKrustofski]





var numberOfTeams = 3
var numOfPlayersInTeam = players.count/numberOfTeams

players[Int(arc4random_uniform(UInt32(players.count - 1)))]





