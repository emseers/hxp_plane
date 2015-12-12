# hxp_plane
Trying to do a damn plane in HaxePunk.

###screenshots
![V0.1](http://i.imgur.com/2jBWxcL.png "V0.1")

Similar in spirit to [Battalion/Battalion 3]
(http://www.kongregate.com/games/urbansquall/battalion-vengeance)

<del>Similar to the old flash game [Skies of War]
(http://www.hagserver.com/swfo/83-skies-of-war-extended.swf?version=1359034493)</del>

###dependencies
!! Install for all dependencies is through Haxe/Lime 

- [Haxe](http://haxe.org/) 3.2.0
- Lime 2.4.3
- [HaxePunk](http://haxepunk.com/) 2.5.5:
- OpenFL 3.1.0 (For Flash Deploy)

Other:

- <del>[HaxePunkTmx](https://github.com/HaxePunk/tiled) 1.0.3</del>
- [Tiled](http://www.mapeditor.org/) 0.12.3

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

Clone and open project in FD, should work.