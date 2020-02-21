//
//  ViewController.swift
//  MittProjekt
//
//  Created by Robert Sundin on 2020-01-20.
//  Copyright © 2020 Robert Sundin. All rights reserved.
//

import UIKit

extension UIViewController {
    func HideKeyBoard() {
        let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(DismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    @objc func DismissKeyboard() {
        view.endEditing(true)
    }
}



class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var playerName: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    
    var players = [Player]()
    let cellId = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib  = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: cellId)
        tableView.dataSource = self
        self.HideKeyBoard()
        
   }
    
    
    @IBAction func howToPlay(_ sender: UIButton) {
        self.performSegue(withIdentifier: "howtoplaySegue", sender: self)
    }
    

    @IBAction func playbuttonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "playviewSegue", sender: self)
//        if (players.count == 0) {
//            tableView.reloadData()
//        }
    }
    
    

    @IBAction func addPlayerPressed(_ sender: UIButton) {
        if playerName.text == "" {
            print("Enter player name")
        } else {
            let player = Player(name: playerName.text, score: 0)
            players.append(player)
            playerName.text = ""
            tableView.reloadData()
            
        }
        print(players.count)
    }
    
    
    
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
        
   }

   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! TableViewCell
    
    
        cell.labelblabla.text = players[indexPath.row].name
        cell.backgroundColor = UIColor.clear
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "playviewSegue" {
            if let destination = segue.destination as? QuestionView {
                destination.players = players
            }
        }
    }
    
    
    
    
}
