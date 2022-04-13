//
//  ViewController.swift
//  CollectionViewDemo
//
//  Created by Vanipanta,Divya Reddy on 4/11/22.
//

import UIKit
import SDWebImage
import YouTubeiOSPlayerHelper

class BoxOfficeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.moviesPosterCV.delegate = self
        self.moviesPosterCV.dataSource = self
        self.moviesPosterCV.collectionViewLayout = layout()
        // Do any additional setup after loading the view.
    }
    
    
    var movies = Movie.loadData()
    @IBOutlet weak var moviesPosterCV: UICollectionView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieRatingLabel: UILabel!
    @IBOutlet weak var movieYearOfRevenue: UILabel!
    @IBOutlet weak var movieRevenueLabel: UILabel!
    
    private func layout() -> UICollectionViewCompositionalLayout{
        let itemSize = NSCollectionLayoutSize(widthDimension: .absolute(200), heightDimension: .absolute(300))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        let groupSize = NSCollectionLayoutSize(widthDimension: .estimated(750), heightDimension: .fractionalHeight(1.0))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        group.interItemSpacing = NSCollectionLayoutSpacing.fixed(5)
        let section = NSCollectionLayoutSection(group: group)
        let layout = UICollectionViewCompositionalLayout(section: section)
        let config = UICollectionViewCompositionalLayoutConfiguration()
        config.scrollDirection = .horizontal
        layout.configuration = config
        return layout
    }
}

extension BoxOfficeVC: UICollectionViewDelegate {
    
}

extension BoxOfficeVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MoviePosterCVC.identifer, for: indexPath)
        let movie = self.movies[indexPath.section]
        if let moviePosterCell = cell as? MoviePosterCVC{
            moviePosterCell.MoviePosterIV.sd_setImage(with: URL(string: movie.urlToPoster ))
        }
        return cell
    }
    
    
}

