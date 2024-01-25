//
//  ViewController.swift
//  Alapati_SearchApp
//
//  Created by student on 3/23/23.
//

import UIKit

class ViewController: UIViewController {
    
    var cartoon_keywords = ["mr.bean" , "powerpuff girls" , "oswald" , "pingu" , "pooh"]
    
    var flowers_keywords = ["BlueFlower" , "Sunflower" , "Rose" , "Dahlia" , "Lotus"]
    
    var singers_keywords = ["V" , "JK" , "RM" , "Suga" , "Jimin"]
    
    var images = [["cart1","cart2","cart3","cart4","cart5"],
                   ["flow1","flow2","flow3","flow4","flow5"],
                    ["sing1","sing2","sing3","sing4","sing5"]]
    
    var topicNum = 0
    var imageNum = 0
    

    @IBOutlet weak var searchTextField: UITextField!
    
     @IBOutlet weak var topicInfoText: UITextView!
    
     @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var searchBtn: UIButton!
    @IBOutlet weak var prevBtn: UIButton!
    @IBOutlet weak var nxtBtn: UIButton!
    @IBOutlet weak var resetBtn: UIButton!
    
    
    @IBAction func ShowNextImagesBtn(_ sender: Any) {
        prevBtn.isEnabled = true
        imageNum+=1
        loadContent(topicNum,imageNum)
        if(imageNum == images[0].count-1){
            nxtBtn.isEnabled = false
        }
    }
    @IBAction func ShowPrevImagesBtn(_ sender: Any) {
        nxtBtn.isEnabled = true
        imageNum-=1
        loadContent(topicNum,imageNum)
        if(imageNum == 0){
            prevBtn.isEnabled = false
        }
    }
    @IBAction func ResetBtn(_ sender: Any) {
        searchBtn.isEnabled = false
        topicNum = 0
        imageNum = 0
        searchTextField.text = ""
        nxtBtn.isHidden = true
        prevBtn.isHidden = true
        resetBtn.isHidden = true
        resultImage.image = UIImage(named: "Image1")
        topicInfoText.text = ""
    }
    
   
    
    @IBAction func searchButtonAction(_ sender: Any) {
        nxtBtn.isHidden = false
        prevBtn.isHidden = false
        resetBtn.isHidden = false
        if(imageNum == 0){
            prevBtn.isEnabled = false
            nxtBtn.isEnabled = true
        }
        if(cartoon_keywords.contains(searchTextField.text!)){
            topicNum = 0
            loadContent(topicNum,imageNum)
}
else if(flowers_keywords.contains(searchTextField.text!)){
            topicNum = 1
            loadContent(topicNum,imageNum)
}
else if(singers_keywords.contains(searchTextField.text!)){
            topicNum = 2
            loadContent(topicNum,imageNum)
}
else{
            resultImage.image = UIImage(named: "Image1")
            nxtBtn.isHidden = true
            prevBtn.isHidden = true
            resetBtn.isHidden = true
            topicInfoText.text = ""
}
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        searchBtn.isEnabled = false
        topicNum = 0
        imageNum = 0
        searchTextField.text = ""
        nxtBtn.isHidden = true
        prevBtn.isHidden = true
        resetBtn.isHidden = true
        resultImage.image = UIImage(named: "Image")
        topicInfoText.text = ""
    }
    func loadContent(_ topicnum:Int,_ imagenum:Int){
        resultImage.image = UIImage(named: images[topicnum][imagenum])
        topicInfoText.text = topics[topicnum][imagenum]
    }

    @IBAction func searchTxtField(_ sender: Any) {
        searchBtn.isEnabled = true
        if(searchTextField.text == ""){
            searchBtn.isEnabled = false
        }
    }
    var topics = [["MR BEAN - Rowan Atkinson, a British actor and comedian, developed and plays the well-known comic figure Mr. Bean. In 1990, the character made his debut in the global phenomenon Mr. Bean, a comedy television series.Due to his misfortunes and lack of social skills, Mr. Bean is a clumsy and rather ignorant man who frequently finds himself in uncomfortable circumstances. He seldom speaks and frequently expresses himself through physical humor and facial gestures.","PPG - Animation artist Craig McCracken is the creator of the American animated television program The Powerpuff Girls. When the program debuted on Cartoon Network in 1998, it immediately won over viewers of all ages.Blossom, Bubbles, and Buttercup are three kindergarten-aged girls with superpowers who star in the show. Together, they combat crime and safeguard their city from villains such as Mojo Jojo and Him. The program is renowned for its unique animation style, vivid color scheme, and blend of action, comedy, and uplifting moments.","OSWALD - Oswald is renowned for its calming and instructive themes, and its characters are created to be sympathetic and lovable to young viewers. Kids may learn a simple lesson from each episode of the program and apply it to their own lives. The show frequently emphasizes the importance of kindness, camaraderie, and problem-solving.The series has won praise for its admirable representation of diversity and inclusion, with prominently featured characters coming from many backgrounds and with a variety of abilities. Oswald is a cheerful and enthusiastic individual who is consistently eager to help his friends and learn new things.","PINGU - In 1986, Switzerland hosted the world premiere of the well-known children's television show Pingu. It describes the adventures of young penguin Pingu and his family near the South Pole. Since then, Pingu has grown in recognition around the globe and has been broadcast on television in more than 150 countries. The program has won multiple awards for both its animation and content. It has also served as an inspiration for a wide range of goods, including clothing, books, and toys.","POOH - Pooh, a little, adorably soft bear, resides in the made-up Hundred Acre Wood with his companions Piglet, Tigger, Eeyore, Rabbit, and others. The tales center on Pooh and his pals' misadventures and adventures as they make their way through life in the Hundred Acre Wood.Since then, Pooh has developed into an iconic figure who has been used in various versions, including cartoons, movies, and products. He is renowned for his easygoing, innocent demeanor as well as his obsession with honey, which frequently lands him in hot water."],
        ["BLUEFLOWER - Forget-me-nots are little, cluster-growing flowers with five petals. They are indigenous to Europe and Asia and are frequently used as a memorial emblem.Large, eye-catching blooms known as hydrangeas can bloom in hues of blue, pink, and purple. They are common in gardens and as cut flowers and are native to Asia and North America.", "SUNFLOWER - The tall, blooming plant genus Helianthus, which is indigenous to North and South America, includes sunflowers. Large, golden blossoms that can measure up to 30 centimeters (12 inches) in diameter are what make sunflowers so distinctive.Sunflowers are raised for both their aesthetic appeal and potential as a crop. They are frequently grown in gardens due to their cheery look, and the seeds may be used to make a range of items, such as bread, snacks, and cooking oils.","ROSE -A common blooming plant in the Rosaceae family is the rose. There are hundreds of different cultivars and more than 100 different species of roses, each with special attributes and traits. The blossoms of roses, which come in a variety of hues from white to pink, red, yellow, and even black, are renowned for their fragrance and beauty.For their aesthetic appeal, roses are extensively farmed and frequently used in gardens, parks, and as cut flowers for special events like weddings and Valentine's Day. Moreover, they are employed in the creation of herbal treatments, cosmetics, and fragrances.","DAHLIA -The family Asteraceae includes the genus Dahlia, which is indigenous to Central America, South America, and Mexico. Dahlia is a genus of flowering plants. Dahlias, of which there are more than 40 kinds, are distinguished by their vibrant, brilliant flowers, which can be as little as pompons or as big as dinner plates. In addition to red, orange, yellow, pink, and white, dahlia blooms also come in bi- and tri-colored variations.","LOTUS - The Nelumbonaceae family of water plants includes the lotus. While it is indigenous to Asia, it may also be found in other continents including Africa, Australia, and North America. The lotus is a perennial aquatic plant that thrives in shallow water, having roots that are deeply embedded in the muck at the water's bottom.The lotus is renowned for its astonishingly lovely blossoms, which are available in a variety of hues from white to pink, and its broad, spherical, green leaves that float on the water's surface. The lotus flower is strongly associated with purity, enlightenment, and reincarnation in many cultures, including Buddhism and Hinduism." ],
            ["V - Kim Taehyung, better known by the stage name BTS V, is a South Korean singer, composer, and actor. He is a member of the 2013-debuting K-pop group BTS, which is well-known around the world.V is renowned for his distinctive and soulful vocal tone, as well as for his engaging on-stage persona and innovative songwriting contributions to BTS. Also, he has been in a number of Korean dramas, such as Itaewon Class and Hwarang: The Poet Warrior Youth"," JK - Jeon Jungkook, better known by the stage moniker BTS JK, is a South Korean singer, composer, and dancer. He is the newest member of the 2013-debuting K-pop sensation BTS, which is well-known throughout the world.JK is renowned for his diverse vocal range, excellent dance moves, and his compositional and lyrical contributions to BTS's songs. In addition, he has recorded solo music, including the well-liked tracks Euphoria and My Time","RM - Kim Namjoon, better known by the stage moniker BTS RM, is a South Korean rapper, composer, and music producer. He is the group's leader and primary rapper. BTS is a well-known K-pop group that made its debut in 2013.RM is renowned for his insightful and thought-provoking lyrics, as well as for his musical direction and leadership roles within BTS. Also, he has released solo songs, such as the single Forever Rain and the mixtape RM. " ,"SUGA - BTS Suga is a South Korean rapper, songwriter, and record producer whose real name is Min Yoongi. He is a member of the 2013-debuting K-pop group BTS, which is well-known around the world.Suga is renowned for his reflective and thought-provoking lyrics, as well as for his outstanding rap abilities and his producer and composer roles in the music of BTS. Also, he has released solo songs, such as the single Daechwita and the mixtape Agust D.", "SUGA - Known professionally as Park Jimin, singer, songwriter, and dancer BTS Jimin is from South Korea. He is a member of the 2013-debuting K-pop group BTS, which is well-known around the world.In addition to having remarkable dancing moves and writing songs for BTS, Jimin is also renowned for his strong and expressive voice. His solo music includes the tracks Lie and Serendipity, among others."]]
}

