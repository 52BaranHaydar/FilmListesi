//
//  KategoriCell.swift
//  Film Müzesi
//
//  Created by Baran on 29.01.2026.
//

import UIKit

class KategoriCell: UITableViewCell {

    @IBOutlet weak var imgKategori: UIImageView!
    
    @IBOutlet weak var lblKategorİAdi: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imgKategori.layer.cornerRadius = 10
    }
    
    func cellDuzenle(filmKategori : FilmKategori){
        imgKategori.image = UIImage(named: filmKategori.goruntuAdi)
        
        lblKategorİAdi.text = filmKategori.kategoriAdi
    }

    

}
