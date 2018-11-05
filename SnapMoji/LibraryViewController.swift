//
//  LibraryViewController.swift
//  SnapMoji
//
//  Created by Josh Baltar on 2018-11-02.
//  Copyright © 2018 Mojo Mojis. All rights reserved.
//

import UIKit

class LibraryViewController: UIViewController{

    
    //@IBOutlet weak var HappyMojiButton: UIButton!
    
    var setEmotion = "emotion"

    @IBOutlet weak var HappyMojiButton: UIButton!
    @IBOutlet weak var SadMojiButton: UIButton!
    @IBOutlet weak var AngryMojiButton: UIButton!
    @IBOutlet weak var SurpriseMojiButton: UIButton!
    @IBOutlet weak var DisgustMojiButton: UIButton!
    @IBOutlet weak var FearMojiButton: UIButton!
    @IBOutlet weak var ContemptMojiButton: UIButton!
    @IBOutlet weak var NeutralMojiButton: UIButton!
    
    @IBAction func HappyMoji_tap(_ sender: Any) {
        setEmotion = emotions[0]
        performSegue(withIdentifier: "libToPopUp_Segue", sender: nil)
    }
    
    @IBAction func SadMoji_tap(_ sender: Any) {
        setEmotion = emotions[0]
        performSegue(withIdentifier: "libToPopUp_Segue", sender: nil)
    }
    @IBAction func AngryMoji_tap(_ sender: Any) {
        setEmotion = emotions[1]
        performSegue(withIdentifier: "libToPopUp_Segue", sender: nil)
    }
    @IBAction func SurpriseMoji_tap(_ sender: Any) {
        setEmotion = emotions[2]
        performSegue(withIdentifier: "libToPopUp_Segue", sender: nil)
    }
    @IBAction func DisgustMoji_tap(_ sender: Any) {
        setEmotion = emotions[3]
        performSegue(withIdentifier: "libToPopUp_Segue", sender: nil)
    }
    
    @IBAction func FearMoji_tap(_ sender: Any) {
        setEmotion = emotions[4]
        performSegue(withIdentifier: "libToPopUp_Segue", sender: nil)
    }
    @IBAction func ContemptMoji_tap(_ sender: Any) {
        setEmotion = emotions[5]
        performSegue(withIdentifier: "libToPopUp_Segue", sender: nil)
    }
    @IBAction func NeutralMoji_tap(_ sender: Any) {
        setEmotion = emotions[6]
        performSegue(withIdentifier: "libToPopUp_Segue", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is PopUp_ViewController
        {
            let vc = segue.destination as? PopUp_ViewController
            vc?.emotion = setEmotion
            vc?.fileName = setEmotion + ".jpg"
        }
    }
    
    let emotions = ["happiness", "sadness", "angrer", "surprise", "disgust", "fear", "contempt", "neutral"]
    
    //to let other classes access members of this class
    /*
    func goToImageChooserClass() {
        let mainStoryBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let secondVController = mainStoryBoard.instantiateViewController(withIdentifier: "PopUp_ViewController") as! PopUp_ViewController
        secondVController.libVController = self
        self.present(secondVController, animated: true, completion: nil)
    }
    */
    

    
    override func viewDidLoad() {
        (UIApplication.shared.delegate as! AppDelegate).restrictRotation = .all
        super.viewDidLoad()
        // collectionView.dataSource = self
        //  collectionView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
        
        print("LOADED LIBRARY")
        //get image
        for emotion in emotions {
            let fileName = emotion + ".jpg"
            let imagePath: String = "\(NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0])/\(fileName)"
            let imageUrl: URL = URL(fileURLWithPath: imagePath)
            
            // check if the image is stored already
            if FileManager.default.fileExists(atPath: imagePath),
                let imageData: Data = try? Data(contentsOf: imageUrl),
                let image: UIImage = UIImage(data: imageData, scale: UIScreen.main.scale) {
                //figure out how to change which moji button we are changing
                let rotatedImage = image.rotate(radians: .pi / 2)
                switch fileName {
                    case "happiness.jpg":
                    HappyMojiButton.setImage(rotatedImage, for: .normal)
                    print("Image set for " + fileName)
                    case "sadness.jpg":
                    SadMojiButton.setImage(rotatedImage, for: .normal)
                    print("Image set for " + fileName)
                    case "anger.jpg":
                    AngryMojiButton.setImage(rotatedImage, for: .normal)
                    print("Image set for " + fileName)
                    case "surprise.jpg":
                    SurpriseMojiButton.setImage(rotatedImage, for: .normal)
                    print("Image set for " + fileName)
                    case "disgust.jpg":
                    DisgustMojiButton.setImage(rotatedImage, for: .normal)
                    print("Image set for " + fileName)
                    case "fear.jpg":
                    FearMojiButton.setImage(rotatedImage, for: .normal)
                    print("Image set for " + fileName)
                    case "contempt.jpg":
                    ContemptMojiButton.setImage(rotatedImage, for: .normal)
                    print("Image set for " + fileName)
                    case "neutral.jpg":
                    NeutralMojiButton.setImage(rotatedImage, for: .normal)
                    print("Image set for " + fileName)
                    default:
                    print("NO IMAGE AVAILABLE FOR " + fileName)
                }
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension UIImage {
    func rotate(radians: CGFloat) -> UIImage {
        let rotatedSize = CGRect(origin: .zero, size: size)
            .applying(CGAffineTransform(rotationAngle: CGFloat(radians)))
            .integral.size
        UIGraphicsBeginImageContext(rotatedSize)
        if let context = UIGraphicsGetCurrentContext() {
            let origin = CGPoint(x: rotatedSize.width / 2.0,
                                 y: rotatedSize.height / 2.0)
            context.translateBy(x: origin.x, y: origin.y)
            context.rotate(by: radians)
            draw(in: CGRect(x: -origin.x, y: -origin.y,
                            width: size.width, height: size.height))
            let rotatedImage = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            
            return rotatedImage ?? self
        }
        
        return self
    }
}
