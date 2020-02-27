

import UIKit



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
        HideKeyBoard()
   }
    
    func HideKeyBoard() {
        let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:)))
        view.addGestureRecognizer(tap)
    }
    
    
    @IBAction func howToPlay(_ sender: UIButton) {
        self.performSegue(withIdentifier: "howtoplaySegue", sender: self)
    }
    

    @IBAction func playbuttonPressed(_ sender: Any) {
        if (players.count == 0) {
            print("no")
            noplayersAlert(title: "No players!", message: "Add players!")
        } else {
            self.performSegue(withIdentifier: "playviewSegue", sender: self)
        }
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
//    if editingStyle == .delete {
//       print("Deleted")
//       self.players.remove(at: indexPath.row)
//       self.tableView.beginUpdates()
//       self.tableView.deleteRows(at: [indexPath], with: .automatic)
//       self.tableView.endUpdates()
    
    
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
    
    
    func noplayersAlert (title: String, message: String) {
        let alert = UIAlertController(title: "No players!", message: "You need to add players before starting the game.", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        
            self.present(alert, animated: true, completion: nil)
        
        }

    
}
