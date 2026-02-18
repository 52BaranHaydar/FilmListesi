//
//  KategorilerVC.swift
//  Film Müzesi
//
//  Created by Baran on 29.01.2026.
//

import UIKit

class KategorilerVC: UIViewController , UITableViewDelegate, UITableViewDataSource{
 
    @IBOutlet weak var tableView: UITableView!
    
    var veriler = VeriSeti()
    var secilenKategoriAdi : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return veriler.kategoriler.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "kategoriCell") as? KategoriCell {
            cell.cellDuzenle(filmKategori: veriler.kategoriler[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        secilenKategoriAdi = veriler.kategoriler[indexPath.row].kategoriAdi
        performSegue(withIdentifier: "filmlistesi", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let filmListesiVC = segue.destination as? FilmListesiVC {
            filmListesiVC.secilenKategoriAdi = secilenKategoriAdi
        }
    }

}

