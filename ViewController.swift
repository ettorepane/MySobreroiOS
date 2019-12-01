//
//  ViewController.swift
//  MySobrero
//
//  Created by Ettore Luigi Pane on 29/11/2019.
//  
//

import UIKit



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        struct Comunicazioni: Decodable {
            let data: String
            let mittente: String
            let contenuto: String
        }
        
        struct Docenti: Decodable {
            let docente: String
            let materie: String
        }
        
        struct User: Decodable {
            let matricola: String
            let nome: String
            let cognome: String
            let classe: String
            let sezione: String
            let corso: String
            let periodo: String
            
        }
        
        
        struct Main: Decodable {
            let version: String
            let user: User
            
        }
        
        
        let userid = "username"
        let passwd = "password"

        let url = URL(string: "http://reapistaging.altervista.org/api.php?uname=\(userid)&password=\(passwd)")


        URLSession.shared.dataTask(with: url!) {data ,_ ,_ in
            
            if let data = data {
                let main = try? JSONDecoder().decode(Main.self, from: data)
                print(data)
                print("JSON PARSING SUCCESS, Version: " + (main!.version))
                print("Student Name: " + (main!.user.nome) + " " + (main!.user.cognome))
                
            }
            
        }.resume()
}

}
