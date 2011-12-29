*{
 *  Outputs a <script> tag whose source is the comasseted output of all the
 *  other javascript files referenced by #{asset.script} tags.
 *
 *  eg:
 *  #{asset.script src="widget.js"}
 *  #{asset.script src="ui.js"}
 *  #{asset.script src="validation.js"}
 *
 *  #{asset.comasseted-script}
 *
 *  See the plugin documentation for more information.
 *  
}*
${ asset.Plugin.compressedJSTag() }