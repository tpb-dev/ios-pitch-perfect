//
//  ViewController.swift
//  ios-pitch-perfect
//
//  Created by Randall Tom on 10/26/17.
//  Copyright © 2017 tpb-dev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingButton: UIButton!
    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var stopRecordingButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        stopRecordingButton.isEnabled = false;
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("View did appear")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func recordAudio(_ sender: Any) {
        recordingLabel.text = "Recording in Progress"
        stopRecordingButton.isEnabled=true
        recordingButton.isEnabled=false
    }
    
    @IBAction func stopRecording(_ sender: Any) {
        recordingLabel.text = "Tap to Record"
        stopRecordingButton.isEnabled=false
        recordingButton.isEnabled=true
    }
}

