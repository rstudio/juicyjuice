#' Perform CSS inlining with HTML
#' 
#' Given an HTML string, the `css_inline()` function will render that into HTML
#' with CSS inlined into the `style` attribute of HTML tags.
#' 
#' @param html HTML provided as a string.
#'
#' @return A character vector of length one which contains the transformed HTML
#'   text.
#' 
#' @examples 
#' 
#' # Take an HTML string and inline the CSS into the tags
#' css_inline(html = "<style>div{color:blue;}</style><div/>")
#' 
#' @export 
css_inline <- function(html) {
  
  js_file <- system.file("dist/bundle.js", package = "juicyjuice")
  
  ct <- V8::v8()
  ct$source(js_file)
  ct$assign("html_text", html)
  ct$assign("options", NULL)
  ct$eval("var inlined = juice(html_text, options);")
  ct$get("inlined")
}
