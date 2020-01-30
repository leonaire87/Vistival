//
//  ViewController.swift
//  Vistival
//
//  Created by mobapp07 on 29/01/2020.
//  Copyright © 2020 mobapp07. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    let items:DataSource = DataSource.init()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //MARK: DATASOURCE
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.artiesten.count
    
    }
    //MARK:DELEGATE
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //maak verwijzing naar cell in storyboard
        let currentCell:ArtistTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! ArtistTableViewCell
        
        //artist voor de juiste rij uit de datasource halen
        let currentArtist = items.artiesten[indexPath.row]
        
        //cell opvullen met artist
        currentCell.artistLbl.text = currentArtist.naam
        currentCell.stageLbl.text = currentArtist.stage
        currentCell.dayLbl.text = "\(currentArtist.day)"
        currentCell.timeLbl.text = currentArtist.time
        
        
        return currentCell
    
    }
    
    //MARK: NAVIGATION
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailsSegue"{
        //welke index (cell) is geselecteerd
        let selectedIndexPath: IndexPath = tableView.indexPath(for: sender as! ArtistTableViewCell)!
        //welke artiest hoort bij de cell
        let selectedArtist = items.artiesten[selectedIndexPath.row]
        //naar welk scherm gaat de navigatie
        let destinationVC:ArtistDetailViewController = segue.destination as! ArtistDetailViewController
        //geef effectief de artiest door naar het volgend scherm
        destinationVC.selectedArtist = selectedArtist
            
            }
        }
    }


