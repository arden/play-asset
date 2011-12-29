*{
 *  Parameters:
 *  - src (required)        filename without the leading path eg "mystyles.css"
 *  - media (optional)      media : screen, print, aural, projection ...
 *  - comasset (optional)   if set to false, file is added to comasseted output,
 *                          but is not itself comasseted
 *
 *  When the plugin is enabled, outputs a comment and adds the css file to the
 *  list of files to be comasseted.
 *  When the plugin is disabled, outputs a css tag with the original source
 *  for easy debugging.
 *
 *  eg:
 *  #{asset.stylesheet src: "widget.css"}
 *  #{asset.stylesheet src: "ui.css"}
 *  #{asset.stylesheet src: "validation.css"}
 *  #{asset.stylesheet src: "path/*.css"} <!-- include all CSS from "path" -->
 *  #{asset.stylesheet src: "path/**.css"} <!-- recursively include all CSS from "path" -->
 *
 *  #{asset.comasseted-stylesheet}
 *
 *  Source css files MUST be in utf-8 format.
 *  See the plugin documentation for more information.
 *  
}*
%{
    ( _arg ) &&  ( _src = _arg);
    
    // comasset defaults to true
    if(_comasset == null) {
      _comasset = true;
    }
    
    if(! _src) {
        throw new play.exceptions.TagInternalException("src attribute cannot be empty for stylesheet tag");
    }

}%
${ asset.Plugin.addCSS(_src, _comasset) }