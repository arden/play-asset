*{
 *  Parameters
 *  - media (optional) media : screen, print, aural, projection ...
 *
 *  Outputs a <link rel="stylesheet"> tag that links to the comasseted output
 *  of all the other stylesheet files referenced by #{asset.stylesheet} tags.
 *
 *  eg:
 *  #{asset.stylesheet src="widget.css"}
 *  #{asset.stylesheet src="ui.css"}
 *  #{asset.stylesheet src="validation.css"}
 *
 *  #{asset.comasseted-stylesheet}
 *
 *  Source css files MUST be in utf-8 format.
 *  See the plugin documentation for more information.
 *  
}*
${ asset.Plugin.compressedCSSTag() }