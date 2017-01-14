css_dir = "../StyleSheets"
sass_dir = "./"
images_dir = "../Images"
javascripts_dir = "../JavaScripts"
relative_assets = true

dev_mode = (environment == :development) ? true : false

output_style = dev_mode ? :expanded : :compressed
line_comments = dev_mode
sass_options = {
  :sourcemap => dev_mode
}
cache = dev_mode