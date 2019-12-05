Overview
=======
The following tutorial will be using Apple's Gamekit framework using Swift 5. With Gamekit we can create applications that allow us to interact with other iOS users through Game Centers own network. Some of the many examples you can implement to your own application are: achievements, leaderboards, and challenges. Through Game Center you are also able to add real time multiplayer or turn base multiplayer. The following screenshots below gives a small glance of what you will be able to create with Gamekit. 

![Image](doc/menu_screen_50_1_50.png "Main Menu") ![Image](doc/achievements_screen_50_1_50.png "Achievement Screen") ![Image](doc/leaderboards_screen_50_1_50.png "Leaderboard Screen") 


Getting started
=======

Set up Game Center in XCode project
----
Go to <b>PROJECT>TARGETS>Signing & Capabilites</b><br />
Click the plus sign next to capabilities to add a new capability. In the prompt that pops up search for Game Center. When complete it should show up like below.


Register your game with App Store Connect
----
To use Game Center's features you have to authenticate the player with Game Center. Before you can do that your game must be registered with Apple. To register head over to [App Store Connect](https://appstoreconnect.apple.com) website (This does require an Apple Developer Account). 


Once your app is registered, select it and go to <b>Features>Game Center</b>

![Image](doc/appstoreGC.png "App Store Game Center")

From here you can manage all of your achievements and leaderboards. When you make a new leaderboard or achievement keep in mind that the identifier you choose cannot be changed later. You will use this identifier in your code to save players progress and data to the leaderboard or achievement that corresponds to the identifier.

You are now ready to start implementing Game Center in your code.

Step-by-step coding instructions
=======

Picking a game
----
There are many routes you can take with this depending on what game interests you the most, however, for this demonstration we will be using a Rock, Paper, Scissors game by Rminsh free to use [Link to repository](https://github.com/Rminsh/RPS)

```swift
import Foundation
class ID {
    
    // Leaderboards
    static let HIGHSCORE = "ueckerherman.ockerse.rps.leaderboard"
    
    
    //Achievements
    static let WIN_1 = "username.rps.WinOneGame"
    static let WIN_5 = "username.rps.WinFive"
    static let WIN_10 = "username.rps.WinTen"
    static let WIN_15 = "username.rps.WinFifteen"
    static let WIN_20 = "username.rps.WinTwenty"
    static let WIN_100 = "username.rps.WinHundred"
    
}
```

Conclusions
=======

```ruby
require 'redcarpet'
markdown = Redcarpet.new("Hello World!")
puts markdown.to_html
```

Paragraphs are separated
-----------
by a blank line.


Two spaces at the end of a line  
produces a line break.

Text attributes _italic_, 
**bold**, `monospace`.

Horizontal rule:


---
Strikethrough:
~~strikethrough~~

Bullet list:

  * apples
  * oranges
  * pears

Numbered list:

  1. lather
  2. rinse
  3. repeat

An [example](http://example.com).

![Image](Icon-pictures.png "icon")
test

> Markdown uses email-style > characters for blockquoting.

Inline <abbr title="Hypertext Markup Language">HTML</abbr> is supported.
