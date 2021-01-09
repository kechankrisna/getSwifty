import UIKit

/**
 formular: var (virable) = (value)
 purpose: using turple and assign value directly to avoid multiline assigne seperate variable
 */
var (authName, songGenra, songDuration, yearReleased, songAlbum, songTitle ) = ("Mr.Khem Veasna", "Romantic", "3:40", 2011, "LDP SONG", "Life's Value")

print("""
This song name "\(songTitle)" was composited and creditd by \(authName) in \(yearReleased) in album \(songAlbum) which last about \(songDuration). This song was accomplished in type of \(songGenra)
""")

/**
  using class and struct
  purpose: to create an instance of my favorite song. I know this is more than the lesson i learn, but i just practise what i have done before to review
 */
struct Author {
    var name : String?
    var age : Int?
    var dateOfBirth : String?
    var placeOfBirth : String?
    //initializer
    init(name:String, age:Int, dateOfBirth: String, placeOfBirth: String) {
        self.name = name
        self.age = age
        self.dateOfBirth = dateOfBirth
        self.placeOfBirth = placeOfBirth
    }
    
}

var author : Author = Author(name: "Jhon Michel", age: 10, dateOfBirth: "07/01/1990", placeOfBirth: "Siemreap, Cambodia")
print((author.name)!) //using nil-coe



//using emnum in swift
enum Genera {
    case ROMANTIC, SAD, CLASSIC, ROCK, METAL, HEAVY
}

//using class in swift
class Song{
    var title : String?
    var author: Author
    var year: Int
    var genra: Genera
    var listened: Int
    var isFavorite : Bool {
        listened>=10
    }
    
    init(title:String, author: Author, year: Int, genra:Genera, listened: Int = 0 ) {
        self.title = title
        self.author = author
        self.year = year
        self.genra = genra
        self.listened = listened
    }

}

//using collection
// song collection
var songs : [Song] = [
    Song(title: "Rock in my heart", author: author, year: 2010, genra: Genera.CLASSIC, listened: 10),
    Song(title: "Listen to my heart", author: author, year: 2020, genra: Genera.SAD, listened: 8),
    Song(title: "We will rock you (KH version)", author: author, year: 2018, genra: Genera.HEAVY),
    Song(title: "Shape of you (KH version)", author: author, year: 2015, genra: Genera.METAL, listened: 30)
]
print(songs)

//my favorite
var favorites = songs.filter { (s) -> Bool in
    s.isFavorite
}

print(favorites)
favorites.forEach { (s) in
    print((s.title)!)
}
