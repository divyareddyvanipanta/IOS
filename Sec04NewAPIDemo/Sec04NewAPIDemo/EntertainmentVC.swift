//
//  ViewController.swift
//  Sec04NewAPIDemo
//
//  Created by chandra on 4/4/22.
//

import UIKit

class EntertainmentVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var articlesTableView: UITableView!
    
    private var articles = [Article]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.articlesTableView.delegate = self
        self.articlesTableView.dataSource = self
        self.fetchJsonData(from: AppConstants.entertainmentUrl)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.articles.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let article = self.articles[indexPath.row]
        
        if let articleCell = cell as? ArticelCellTVC{
            
            if let title = article.title{
                articleCell.titleLBL.text = title
            }
            
            if let description = article.description{
                articleCell.descriptionLBL.text = description
            }
            
            if let author = article.author{
                articleCell.authorLBL.text = "Author: \(author)"
            }
            
            if let imageUrl = article.urlToImage{
                self.loadImage(for: articleCell.thumbnailIV, from: imageUrl)
            }
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "detailSegue", sender: indexPath)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier{
            
            switch identifier{
                
            case "detailSegue":
                let destVC = segue.destination as? DetailArticleVC
                
                if let ip = sender as? IndexPath{
                    
                    let article = self.articles[ip.row]
                    
                    if let title = article.title{
                        destVC?.titleText = title
                    }
                    
                    if let content = article.content{
                        destVC?.content = content
                    }
                    
                    if let imageUrl = article.urlToImage{
                        destVC?.imageUrl = imageUrl
                    }
                }
                
            default: break
            }
        }
    }
    
    private func fetchJsonData(from url: String){
        
        let task = URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: {data, response, error in
            
            guard let data = data, error == nil else{
                return
            }
            
            do{
                let jsonResponse = try JSONDecoder().decode(Articles.self, from: data)
                
                DispatchQueue.main.async {
                    
                    self.articles = jsonResponse.articles
                    self.articlesTableView.reloadData()
                }
                
            }catch{
                print(error)
            }
        })
        
        task.resume()
    }
    
    private func loadImage(for imageView: UIImageView, from url: String){
        
        let task = URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: {data, response, error in
            
            guard let data = data, error == nil else{
                return
            }
            
            DispatchQueue.main.async {
                imageView.image = UIImage(data: data)
            }
        })
        
        task.resume()
    }

}

