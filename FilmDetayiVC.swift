//
//  FilmDetayiVC.swift
//  Film Müzesi
//
//  Created by Baran on 29.01.2026.
//

import UIKit

class FilmDetayiVC: UIViewController {

    @IBOutlet weak var imgFilmGorsel: UIImageView!
    @IBOutlet weak var lblFilmDetayi: UITextView!
    @IBOutlet weak var lblFilmAdi: UILabel!
    
    var secilenFilm  : Film!
    override func viewDidLoad() {
        super.viewDidLoad()

        if let secilenFilm  = secilenFilm{
            imgFilmGorsel.image = UIImage(named: secilenFilm.goruntuAdi)
            lblFilmAdi.text = secilenFilm.adi
            lblFilmDetayi.text = secilenFilm.detaylari
            
        }
    }
    



}
