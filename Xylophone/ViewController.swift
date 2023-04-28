import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer?

    @IBAction func keyPressed(_ sender: UIButton) {
        if let buttonLabel = sender.currentTitle {
            sender.alpha = 0.5
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                  sender.alpha = 1.0
              }
            
            playSound(soundName: buttonLabel)
        }
    }
    
    func playSound(soundName: String) {
        if let url = Bundle.main.url(forResource: soundName, withExtension: "wav") {
            player = try? AVAudioPlayer(contentsOf: url)
            player?.play()
        }
    }
}

