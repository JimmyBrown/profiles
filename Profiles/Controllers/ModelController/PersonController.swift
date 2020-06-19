//
//  PersonController.swift
//  Profiles
//
//  Created by Ian Richins on 6/19/20.
//  Copyright © 2020 Jimmy. All rights reserved.
//

import Foundation

class PersonController {
    
    static let shared = PersonController()
    
    var profile: [Person] = []
    
    // MARK - Persistance
          func createFileForPersistantStore() -> URL {
              let url = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
              let fileURL = url[0].appendingPathComponent("Profiles.json")
              return fileURL
          }
       
       func saveToPersistentStore() {
              /// creating an instance of JSONEncoder and naming it jsonEnconder
              let jsonEncoder = JSONEncoder()
              /// attempt to convert our playlist to JSON and write it to the storage file
              do{
                  let jsonPlaylists = try jsonEncoder.encode(profile)
                  try jsonPlaylists.write(to: createFileForPersistantStore())
              } catch let encodingError {
                  /// handling our error using the localized description on encodingError
                  print("There was an error encoding the data \(encodingError.localizedDescription)")
              }
          }
          
          func loadfromPersistentStore() {
              let jsonDecoder = JSONDecoder()
              do {
                  /// attempting to convert our Data back into our Playlist object from the decodedData file
                  /// adding those decoded Playlist objects to our playlist array
                  let decodedData = try Data(contentsOf: createFileForPersistantStore())
                  let decodedPlaylistArray = try jsonDecoder.decode([Person].self, from: decodedData)
                  profile = decodedPlaylistArray
              } catch let decodingError {
                  /// handling our error
                  print("there was an error decoding the data \(decodingError.localizedDescription)")
              }
          }
}
