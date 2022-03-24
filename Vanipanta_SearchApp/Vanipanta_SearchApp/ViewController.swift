//
//  ViewController.swift
//  Vanipanta_SearchApp
//
//  Created by Vanipanta,Divya Reddy on 3/23/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.searchButton.isEnabled =  false
        self.previousButton.isHidden = true
        self.nextButton.isHidden = true
        self.resetButton.isHidden = true
        self.resultImage.image = UIImage(named: "default")
    }
    var images = [
        "animals" : ["giraffe.jpg", "lion.jpg", "tiger.jpg", "elephant.jpg", "peacock.jpg"],
        "flowers" : ["dahlia.jpg", "clematis.jpg", "hydrangea.jpg", "pink.jpg", "petaled.jpg"],
        "plants" : ["fern.jpg", "pine.jpg", "crassula.jpg", "pots.jpg", "pinkplant.jpg"]
    ]
    var flowersKeywords = ["dahlia", "flower", "clematis", "hydrangea"]
    var plantsKeywords = ["plant", "fern", "pine", "crassula"]
    var animalsKeywords = ["giraffe", "lion", "tiger", "elephant", "peacock", "animals", "animal"]
    var topicsArray = [
        "animals":["The giraffe is a tall African hoofed mammal belonging to the genus Giraffa. It is the tallest living terrestrial animal and the largest ruminant on Earth. Traditionally, giraffes were thought to be one species, Giraffa camelopardalis, with nine subspecies. Most recently, researchers proposed dividing giraffes into up to eight extant species due to new research into their mitochondrial and nuclear DNA, as well as morphological measurements. Seven other extinct species of Giraffa are known from the fossil record.", "The lion (Panthera leo) is a large cat of the genus Panthera native to Africa and India. It has a muscular, deep-chested body, short, rounded head, round ears, and a hairy tuft at the end of its tail. It is sexually dimorphic; adult male lions are larger than females and have a prominent mane", "The tiger (Panthera tigris) is the largest living cat species and a member of the genus Panthera. It is most recognisable for its dark vertical stripes on orange fur with a white underside. An apex predator, it primarily preys on ungulates such as deer and wild boar", "Elephants are the largest existing land animals. Three living species are currently recognised: the African bush elephant, the African forest elephant, and the Asian elephant. They are an informal grouping within the proboscidean family Elephantidae. Elephantidae is the only surviving family of proboscideans; extinct members include the mastodons.", "Peafowl is a common name for three bird species in the genera Pavo and Afropavo within the tribe Pavonini of the family Phasianidae, the pheasants and their allies. Male peafowl are referred to as peacocks, and female peafowl are referred to as peahens"],
        "flowers" : ["Dahlia is a genus of bushy, tuberous, herbaceous perennial plants native to Mexico and Central America. A member of the Compositae (also called Asteraceae) family of dicotyledonous plants, its garden relatives thus include the sunflower, daisy, chrysanthemum, and zinnia.", "Clematis is a genus of about 300 species within the buttercup family, Ranunculaceae. Their garden hybrids have been popular among gardeners, beginning with Clematis × jackmanii, a garden standby since 1862; more hybrid cultivars are being produced constantly. ", "Hydrangea flowers are produced from early spring to late autumn; they grow in flowerheads (corymbs or panicles) most often at the ends of the stems. Typically the flowerheads contain two types of flowers: small non-showy fertile flowers in the center or interior of the flowerhead, and large, sterile showy flowers with large colorful sepals ", "Pink flowers are used as a symbol of love and awareness. For decades, pink flowers have been used to decorate weddings as a symbol of love.[1] They can also be used as a display of love at funerals, as demonstrated at the funeral for Anna Nicole Smith. More recently, pink flowers have come to symbolize breast cancer awareness.", "Petals are modified leaves that surround the reproductive parts of flowers. They are often brightly colored or unusually shaped to attract pollinators. All of the petals of a flower are collectively known as the corolla. Petals are usually accompanied by another set of modified leaves called sepals, that collectively form the calyx and lie just beneath the corolla. "],
        "plants" : ["A fern is a member of a group of vascular plants (plants with xylem and phloem) that reproduce via spores and have neither seeds nor flowers. They differ from mosses and other bryophytes by being vascular.", "A pine is any conifer tree or shrub in the genus Pinus (/ˈpiːnuːs/)[1] of the family Pinaceae. Pinus is the sole genus in the subfamily Pinoideae. The Plant List compiled by the Royal Botanic Gardens, Kew and Missouri Botanical Garden accepts 126 species names of pines as current, together with 35 unresolved species and many more synonyms.", "Crassula is a genus of succulent plants containing about 200 accepted species, including the popular jade plant (Crassula ovata).[1] They are members of the stonecrop family (Crassulaceae) and are native to many parts of the globe, but cultivated varieties originate almost exclusively from species from the Eastern Cape of South Africa.", "Most plants are multicellular organisms. Green plants obtain most of their energy from sunlight via photosynthesis by primary chloroplasts that are derived from endosymbiosis with cyanobacteria. Their chloroplasts contain chlorophylls a and b, which gives them their green color. Some plants are parasitic or mycotrophic and have lost the ability to produce normal amounts of chlorophyll or to photosynthesize, but still have flowers, fruits, and seeds.", "Pinks are mostly short herbaceous perennials, many of which are tufted or mat-forming hardy evergreens. There are also some annual forms. The small but showy and often fragrant flowers are mostly pink to deep rose, with some being red, purple, white, or yellow."]
    ]
    var keyword = ""
    var count = 0
    
    @IBAction func searchTextChanged(_ sender: UITextField) {
        self.searchButton.isEnabled = true
    }
    @IBOutlet weak var searchButton: UIButton!
   
   
    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var previousButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    @IBAction func searchButtonAction(_ sender: UIButton) {
        if let search_keyword = self.searchTextField.text {
                if flowersKeywords.contains(search_keyword) {
                    resultImage.image = UIImage(named: images["flowers"]![0])
                    self.topicInfoText.text = topicsArray["flowers"]![0]
                    self.keyword = "flowers"
                    updateData()
                }
                else if animalsKeywords.contains(search_keyword) {
                    resultImage.image = UIImage(named: images["animals"]![0])
                    self.topicInfoText.text = topicsArray["animals"]![0]
                    self.keyword = "animals"
                    updateData()
                }
                else if plantsKeywords.contains(search_keyword) {
                    resultImage.image = UIImage(named: images["plants"]![0])
                    self.topicInfoText.text = topicsArray["plants"]![0]
                    self.keyword = "plants"
                    updateData()
                }
                else {
                    topicInfoText.text = "Nothing Found!"
                    viewDidLoad()
                }
            }
    }

    
 
    
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBAction func ShowPreviousImage(_ sender: UIButton) {
        count -= 1
        resultImage.image = UIImage(named: images[keyword]![count])
        topicInfoText.text = topicsArray[keyword]![count]
        if count == 0 {
            self.previousButton.isEnabled = false
        }
        self.nextButton.isEnabled = true
    }

    @IBAction func showNextImage(_ sender: UIButton) {
        count += 1
        resultImage.image = UIImage(named: images[keyword]![count])
        topicInfoText.text = topicsArray[keyword]![count]
        if count == (images[keyword]!.count - 1) {
            self.nextButton.isEnabled = false
        }
        self.previousButton.isEnabled = true
    }
    
    @IBAction func reset(_ sender: UIButton) {
        self.nextButton.isEnabled = false
        self.previousButton.isEnabled = false
        self.nextButton.isHidden = true
        self.previousButton.isHidden = true
        self.resetButton.isHidden = true
        self.searchButton.isEnabled = false
        self.keyword = ""
        self.count = 0
        self.resultImage.image = UIImage(named: "default")
        self.topicInfoText.text = ""
        self.searchTextField.text = ""
    }
    

    @IBOutlet weak var topicInfoText: UITextView!
    
    func updateData() {
        self.nextButton.isHidden = false
        self.previousButton.isHidden = false
        self.nextButton.isEnabled = true
        self.previousButton.isEnabled = false
        self.resetButton.isHidden = false
    }
}

