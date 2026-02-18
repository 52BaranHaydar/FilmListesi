//
//  FilmCell.swift
//  Film Müzesi
//
//  Created by Baran on 29.01.2026.
//

import UIKit

class FilmCell: UICollectionViewCell {
    
    @IBOutlet weak var imgFilm: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imgFilm.layer.cornerRadius = 10
    }
    func cellDuzenle(film : Film){
        imgFilm.image = UIImage(named: film.goruntuAdi)
    }
}
