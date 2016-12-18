//
//  SettingsVC.swift
//  Drawing App
//
//  Created by roycetanjiashing on 18/12/16.
//  Copyright © 2016 examplecompany. All rights reserved.
//

import UIKit

class SettingsVC: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var brushSizeLabel: UILabel!
    @IBOutlet var opacityLabel: UILabel!
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismiss(_ sender: Any) {
    }
    @IBAction func brushSizeChanged(_ sender: Any) {
    }
    @IBAction func opacityChanged(_ sender: Any) {
    }
    @IBAction func redSliderChanged(_ sender: Any) {
    }
    @IBAction func greenSliderChanged(_ sender: Any) {
    }
    @IBAction func blueSliderChanged(_ sender: Any) {
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
