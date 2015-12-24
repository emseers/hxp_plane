# hxp_plane
Trying to do a damn plane in HaxePunk.

Similar in spirit to [Battalion/Battalion 3]
(http://www.kongregate.com/games/urbansquall/battalion-vengeance)

<del>Similar to the old flash game [Skies of War]
(http://www.hagserver.com/swfo/83-skies-of-war-extended.swf?version=1359034493)</del>

###screenshots
![V0.1](http://i.imgur.com/2jBWxcL.png "V0.1")

###contribute
Feel free to copy code snippets etc... for help with your own projects.

If you see anything odd with the code/play testing experience please report it on the Issue page

###dependencies
!! Install for all dependencies is through Haxe/Lime 

- [Haxe](http://haxe.org/) 3.2.0
- Lime 2.4.3
- [HaxePunk](http://haxepunk.com/) 2.5.5:
- OpenFL 3.1.0 (For Flash Deploy)

Other:

- <del>[HaxePunkTmx](https://github.com/HaxePunk/tiled) 1.0.3</del>
- [Tiled](http://www.mapeditor.org/) 0.12.3

Plugins (dependencies nested in project):

- voec's [punk.AnimatedTileMap](https://github.com/voec/punk.AnimatedTilemap)
- TiledXML - self written customised carbon copy of HaxePunkTmx (exposing the data more readily mostly)

###assets
Graphic + sound assets are stored on Emseers' Google Drive.
Prototype assets (really great free packages):

- Kenney's [Roguelike Modern City](http://kenney.nl/assets/roguelike-modern-city)
- Ari Feldman's [Spritelib_GPL - 1945 Set](http://www.widgetworx.com/spritelib/)

###build:

1) Get [Haxe](http://haxe.org/download)

2) Get [Tiled]{http://www.mapeditor.org/download.html}

3) Install haxepunk:

    haxelib install HaxePunk
    haxelib run HaxePunk setup

4) Get lime to support OSs:

    lime setup windows
    lime setup linux

5) Set lime to last working Windows version:

    haxelib set lime 2.4.3

6) Install/Update other dependencies
        
    <del>haxelib install HaxePunkTmx</del>
	
7) (Optional) Get [FlashDevelop](http://www.flashdevelop.org/community/viewforum.php?f=11),
works really well for Haxe and Flash work

8) Symbolic link the GDrive folders to their corresponding locations in the repo

 - Use [Link](http://schinagl.priv.at/nt/hardlinkshellext/linkshellextension.html) Shell Extension to save time
 - [Tutorial](http://emseers.github.io/blog/2015-11-27.html) on how to do it properly

Clone and open project in FD, should work.