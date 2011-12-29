*{
 *  Parameters:
 *  - src (required)       filename without the leading path eg "myscript.js"
 *  - media (optional)     media : screen, print, aural, projection ...
 *  - comasset (optional)  if set to false, file is added to comasseted output,
 *                         but is not itself comasseted
 *
 *  When the plugin is enabled, outputs a comment and adds the script to the
 *  list of files to be comasseted.
 *  When the plugin is disabled, outputs a script tag with the original source
 *  for easy debugging.
 *
 *  eg:
 *  #{asset.script src: "jquery.min.js", comasset: false}
 *  #{asset.script src: "widget.js"}
 *  #{asset.script src: "ui.js"}
 *  #{asset.script src: "validation.js"}
 *  #{asset.script src: "path/*.js"} <!-- include all JS from "path" -->
 *  #{asset.script src: "path/**.js"} <!-- recursively include all JS from "path" -->
 *
 *  #{asset.comasseted-script}
 *
 *  Source script files MUST be in utf-8 format.
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
        throw new play.exceptions.TagInternalException("src attribute cannot be empty for asset.script tag");
    }

}%
${ asset.Plugin.addJS(_src, _comasset) }