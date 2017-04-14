# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

set :css_dir,    'assets/stylesheets'
set :js_dir,     'assets/javascripts'
set :images_dir, 'assets/images'
set :fonts_dir,  'assets/fonts'
set :layout,     'layouts/application'
# Relative links needed to deploy to Github Pages
set :relative_links, true

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )


# Extensions
# -------------------------------------------------------------------------------
# activate after blog settings as per Middleman docs.
activate :directory_indexes

# GA
activate :google_analytics do |ga|
  ga.tracking_id = 'UA-714749-30'
  ga.test = true
end


# Build-specific configuration
# -------------------------------------------------------------------------------
configure :build do
  require "favicon_maker"
  activate :favicon_maker

  # Relative assets needed to deploy to Github Pages
  activate :relative_assets

  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Or use a different image path
  # set :http_prefix, "/Content/images/"

  # ignore "/shared/_project.html"
end


# Development
# -------------------------------------------------------------------------------
configure :development do
  activate :livereload
end
