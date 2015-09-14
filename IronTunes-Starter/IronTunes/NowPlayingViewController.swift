//
//  ViewController.swift
//  IronTunes
//
//  Created by Ben Gohlke on 9/14/15.
//  Copyright (c) 2015 The Iron Yard. All rights reserved.
//

import UIKit
import AVFoundation
import MediaPlayer

class NowPlayingViewController: UIViewController
{

    @IBOutlet var songTitleLabel: UILabel!
    @IBOutlet var artistLabel: UILabel!
    @IBOutlet var albumArtwork: UIImageView!
    
    @IBOutlet var playPauseButton: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Action handlers
    
    @IBAction func playPauseTapped(sender: UIButton)
    {
    }
    
    @IBAction func skipForwardTapped(sender: UIButton)
    {
        let currentSongIndex = (songs as NSArray).indexOfObject(currentSong!)
        
    }
    
    @IBAction func skipBackTapped(sender: UIButton)
    {
        
    }
    
    // MARK: - Private methods
    
    func configurePlaylist()
    {
        let acoustic = Song(title: "Happiness", artist: "Benjamin Tissot", filename: "happiness", albumArtwork: "Acoustic")
        songs.append(acoustic)
        currentSong = acoustic
        
        let dubstep = Song(title: "Dubstep", artist: "Benjamin Tissot", filename: "dubstep", albumArtwork: "Dubstep")
        songs.append(dubstep)
        
        let hiphop = Song(title: "Groovy Hip Hop", artist: "Benjamin Tissot", filename: "groovyhiphop", albumArtwork: "HipHop")
        songs.append(hiphop)
        
        let rock = Song(title: "Actionable", artist: "Benjamin Tissot", filename: "actionable", albumArtwork: "Rock")
        songs.append(rock)
        
        let funk = Song(title: "Funky Suspense", artist: "Benjamin Tissot", filename: "funkysuspense", albumArtwork: "Funk")
        songs.append(funk)
    }
    
    func loadCurrentSong()
    {
        avQueuePlayer.removeAllItems()
        if let song = currentSong
        {
            
        }
    }
    
    func setupAudioSession()
    {
        AVAudioSession.sharedInstance().requestRecordPermission({(granted: Bool)-> Void in
            if granted
            {
                AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback, error: nil)
                AVAudioSession.sharedInstance().setActive(true, error: nil)
            }
            else
            {
                println("Audio session could not be configured; user denied permission.")
            }
        })
    }
    
    func togglePlayback(play: Bool)
    {
        
    }
}