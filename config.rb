###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false


# Blog options
activate :blog do |blog|
  blog.layout = 'article'
  blog.sources = 'articles/{year}-{month}-{day}-{title}.html'
  blog.permalink = '{title}'
end

# for nice looking urls without .html
activate :directory_indexes

# relative paths
activate :relative_assets
set :relative_links, true

# assets to reload after changes
activate :asset_hash

set :markdown_engine, :redcarpet

Time.zone = 'London'


# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Build-specific configuration
configure :build do
  # Minify CSS on build
  activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript
end
