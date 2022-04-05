//
//  ViewController.swift
//  SimpsonBook17
//
//  Created by Yavuz Güner on 20.02.2022.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var movieSeries = [Movies]()
    
    var chosenMovie : Movies?

    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
        
        //MOVIES OBJECTS
        /* Series sayfasında tanımlamamı net yaptığım için(parametre tanımlayarak) şimdi daha güzel oldu fazla koddan kurtulduk.
        let godfather =  Movies()
        godfather.name = "The Godfather"
        godfather.year = "1972-1990"
        godfather.image = UIImage(named: "godfather.jpeg")!
        
        let starwars = Movies()
        starwars.name = "Star Wars"
        starwars.year = "1977-1983"
        starwars.image = UIImage(named: "starwars.jpeg")!
        
        let jamesbond = Movies()
        jamesbond.name = "James Bond"
        jamesbond.year = "1962- 2021"
        jamesbond.image = UIImage(named: "jamesbond.jpeg")!
        
        let harrypotter = Movies()
        harrypotter.name = "Harry Potter"
        harrypotter.year = "2001-2011"
        harrypotter.image = UIImage(named: "harrypotter.jpeg")!
        
        let jasonbourne = Movies()
        jasonbourne.name = "Jason Bourne"
        jasonbourne.year = "2002-2016"
        jasonbourne.image = UIImage(named: "jasonbourne.jpeg")!
        
        let lotr = Movies ()
        lotr.name = "Lord of the Rings"
        lotr.year = "2001-2003"
        lotr.name = UIImage(named: "lotr.jpeg")!
        */
        
        let godfather = Movies(movieName: "The Godfather", movieYear: "1972-1990", movieImage: UIImage(named: "godfather.jpeg")!)
        
        let starwars = Movies(movieName: "Star Wars", movieYear: "1977-1983", movieImage: UIImage(named: "starwars.jpeg")!)
        
        let jamesbond = Movies(movieName: "James Bond", movieYear: "1962-2021", movieImage: UIImage(named: "jamesbond.jpeg")!)
        
        let harrypotter = Movies(movieName: "Harry Potter", movieYear: "2001-2011", movieImage: UIImage(named: "harrypotter.jpeg")!)
        
        let jasonbourne = Movies(movieName: "Jason Bourne", movieYear: "2002-2016", movieImage: UIImage(named: "jasonbourne.jpeg")!)
        
        let lotr = Movies(movieName: "Lord of the Rings", movieYear: "2001-2003", movieImage: UIImage(named: "lotr.jpeg")!)
        
        movieSeries.append(godfather)
        movieSeries.append(starwars)
        movieSeries.append(jamesbond)
        movieSeries.append(harrypotter)
        movieSeries.append(jasonbourne)
        movieSeries.append(lotr)
        
        navigationItem.title = "Movie Series"

        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieSeries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = movieSeries[indexPath.row].name
        return cell
    }
    
    //Seçilince diğr sayfaya gitsin deriz ve bu yüzden
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenMovie = movieSeries[indexPath.row]
        self.performSegue(withIdentifier: "toDetailVC", sender: nil)
    }
    
    //prepere for segue yapıyoruz kesinlikle
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC"{
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedMovies = chosenMovie
        }
    }


}



