// Soccer League Coordinator by Peter Lai.

// create a dictionary for each player's personal information.



let joeSmith : [String : Any] = ["Name" : "Joe Smith",
                                 "Height" : 42.0,
                                 "Experienced" : true,
                                 "Guardian" : "Jim and Jan Smith"]

let jillTanner : [String : Any] = ["Name" : "Jill Tanner",
                                   "Height" : 36.0,
                                   "Experienced" : true,
                                   "Guardian" : "Clara Tanner"]

let billBon : [String : Any] = ["Name" : "Bill Bon",
                                "Height" : 43.0,
                                "Experienced" : true,
                                "Guardian" : "Sara and Jenny Bon"]

let evaGordon : [String : Any] = ["Name" : "Eva Gordon",
                                  "Height" : 45.0,
                                  "Experienced" : false,
                                  "Guardian" : "Wendy and Mike Gordon"]

let mattGill : [String : Any] = ["Name" : "Matt Gill",
                                 "Height" : 40.0,
                                 "Experienced" : false,
                                 "Guardian" : "Charles and Sylvia Gill"]

let kimmyStein : [String : Any] = ["Name" : "Kimmy Stein",
                                   "Height" : 41.0,
                                   "Experienced" : false,
                                   "Guardian" : "Bill and Hillary Stein"]

let sammyAdams : [String : Any] = ["Name" : "Sammy Adams",
                                   "Height" : 45.0,
                                   "Experienced" : false,
                                   "Guardian" : "Jeff Adams"]

let karlSaygan : [String : Any] = ["Name" : "Karl Saygan",
                                   "Height" : 42.0,
                                   "Experienced" : true,
                                   "Guardian" : "Heather Bledsoe"]

let suzaneGreenberg : [String : Any] = ["Name" : "Suzane Greenberg",
                                        "Height" : 44.0,
                                        "Experienced" : true,
                                        "Guardian" : "Henrietta Dumas"]

let salDali : [String : Any] = ["Name" : "Sal Dali",
                                "Height" : 41.0,
                                "Experienced" : false,
                                "Guardian" : "Gala Dali"]

let joeKavalier : [String : Any] = ["Name" : "Joe Kavalier",
                                    "Height" : 39.0,
                                    "Experienced" : false,
                                    "Guardian" : "Sam and Elaine Kavalier"]

let benFinkelstein : [String : Any] = ["Name" : "Ben Finkelstein",
                                       "Height" : 44.0,
                                       "Experienced" : false,
                                       "Guardian" : "Aaron and Jill Finkelstein"]

let diegoSoto : [String : Any] = ["Name" : "Diego Soto",
                                  "Height" : 41.0,
                                  "Experienced" : true,
                                  "Guardian" : "Robin and Sarika Soto"]

let chloeAlaska : [String : Any] = ["Name" : "Chloe Alaska",
                                    "Height" : 47.0,
                                    "Experienced" : false,
                                    "Guardian" : "David and Jamie Alaska"]

let arnoldWillis : [String : Any] = ["Name" : "Arnold Willis",
                                     "Height" : 43.0,
                                     "Experienced" : false,
                                     "Guardian" : "Claire Willis"]

let phillipHelm : [String : Any] = ["Name" : "Phillip Helm",
                                    "Height" : 44.0,
                                    "Experienced" : true,
                                    "Guardian" : "Thomas Helm and Eva Jones"]

let lesClay : [String : Any] = ["Name" : "Les Clay",
                                "Height" : 42.0,
                                "Experienced" : true,
                                "Guardian" : "Wynonna Brown"]

let herschelKrustofski : [String : Any] = ["Name" : "Herschel Krustofski",
                                           "Height" : 45.0,
                                           "Experienced" : true,
                                           "Guardian" : "Hyman and Rachel Krustofski"]







// put the list of players into an array.


var players = [joeSmith, jillTanner, billBon, evaGordon, mattGill, kimmyStein,
               sammyAdams, karlSaygan, suzaneGreenberg, salDali, joeKavalier, benFinkelstein,
               diegoSoto, chloeAlaska, arnoldWillis, phillipHelm, lesClay, herschelKrustofski]




// Create an array of teams

var dragons = [[String : Any]]()
var sharks = [[String : Any]]()
var raptors = [[String : Any]]()

let teams = [dragons, sharks, raptors]

var pros = [[String : Any]]()
var rookies = [[String : Any]]()





// sort Players by their height using selection sort (from shortest to tallest)

func sortPlayersByHeight(team: [[String : Any]]) -> [[String : Any]] {
    var team = team
    
    for i in 0..<team.count {
        for j in i + 1..<team.count {
            var currentPlayer = team[j]     // current unsorted player in place to compare height.
            var minPlayer = team[i]         // shortest player in the unsorted portion of the array. When currnet j loop ends, it will become part of the sorted array.
            if  (currentPlayer["Height"] as! Double) < (minPlayer["Height"] as! Double) {
                // perform a swap in position if currentPlayer's height is shorter than minPlayer's height.
                let temp = team[i]
                team[i] = team[j]
                team[j] = temp
            }
            
        }
    }
    
    return team
}



// replaced players array with a sorted version

players = sortPlayersByHeight(players)




// split all players into 2 groups: pros and rookies

for player in players {
    if player["Experienced"] as! Bool == true {
        pros.append(player)
    } else {
        rookies.append(player)
    }
}





// assigning even number of pro players to each team


var num = 0             // initializing counter for the loop

for player in pros {
        
    if (num % 3 == 0) {
        dragons.append(player)
    } else if (num % 3 == 1) {
        sharks.append(player)
    } else if (num % 3 == 2) {
        raptors.append(player)
    }
    
    num += 1
}

// assigning even number rookies of rookies to each team

for player in rookies {
    
    if (num % 3 == 0) {
        raptors.append(player)
    } else if (num % 3 == 1) {
        sharks.append(player)
    } else if (num % 3 == 2) {
        dragons.append(player)
    }
    
    num += 1
}








// function that returns the average height of a team as double (takes in any array of players)

func averageHeight(team: [[String : Any]]) -> Double {
    var avgHeight: Double = 0.0
    for player in team {
        let height : Double = player["Height"] as! Double
        avgHeight = avgHeight + height
    }
    return avgHeight/Double(team.count)
}



// function for comparing the average height of 2 teams to see if they are within 1.5 inches of each other


func isAverageHeightWithinRange(firstAverageHeight firstAverageHeight: Double, secondAverageHeight: Double, range: Double) -> Bool {
    
    let averageDiffernce = abs(firstAverageHeight - secondAverageHeight)
    
    if averageDiffernce > range {
        return false
    } else {
        return true
    }

}

if isAverageHeightWithinRange(firstAverageHeight: averageHeight(sharks),
                              secondAverageHeight: averageHeight(raptors), range: 1.5) &&
    isAverageHeightWithinRange(firstAverageHeight: averageHeight(sharks),
                               secondAverageHeight: averageHeight(dragons), range: 1.5) &&
    isAverageHeightWithinRange(firstAverageHeight: averageHeight(raptors),
                               secondAverageHeight: averageHeight(dragons), range: 1.5) {
    print("Yes, average heights of the teams are within 1.5 inches of each other.\n\n")
} else {
    print("No, average heights is out of range.\n\n")
}



///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////// Personalised Letters /////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////




// Return the date/time (string) of team training based on the name of the team.

func trainingDateFor(teamName: String) -> String {
    switch teamName {
        case "Dragons": return "March 17, 1pm"
        case "Sharks": return "March 17, 3pm"
        case "Raptors": return "March 18, 1pm"
    default: return "unconfirm Date/Time"
    }
}

// Return the array of players for a team based on the name of the team.

func teamSelected(teamName: String) -> [[String : Any]] {
    switch teamName {
        case "Dragons": return dragons
        case "Sharks": return sharks
        case "Raptors": return raptors
    default: return [[String : Any]]()
    }
}


// Print out personalised letters for each player of a team

func printLettersFor(teamName: String) {
    
    let dateTime = trainingDateFor(teamName)
    let team = teamSelected(teamName)
    
    for player in team {
        print("***************************************************************************\n\nDear \(player["Guardian"] as! String), \n\nWe are pleased to inform you that \(player["Name"] as! String) has been assigned \nto Team \(teamName) for the 2017 Penrose Soccer League, First team \npractice for \(teamName) will be held on \(dateTime). \n\nPlease feel free to contact us through email: team.\(teamName)@psl.org, \nif you have any enquiries. \n\n\nSusan Bond, \nTeam Coordinator, PSL\n\n***************************************************************************\n")
    }
}




// print letters for all 3 teams

func printLetters() {
    printLettersFor("Dragons")
    printLettersFor("Sharks")
    printLettersFor("Raptors")
}


printLetters()


