# module MetaTagsHelper
#   def meta_title
#     content_for?(:meta_title) ? content_for(:meta_title) : DEFAULT_META["meta_title"]
#   end

#   def meta_description
#     content_for?(:meta_description) ? content_for(:meta_description) : DEFAULT_META["meta_description"]
#   end

#   def meta_image
#     meta_image = (content_for?(:meta_image) ? content_for(:meta_image) : DEFAULT_META["meta_image"])
#     # little twist to make it work equally with an asset or a url
#     meta_image.starts_with?("http") ? meta_image : image_url(meta_image)
#   end
# # end

    # <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

#     <!-- <meta name="description" content="<%= meta_description %>">

#     <!-- Facebook Open Graph data -->
#     <meta property="og:title" content="<%= meta_title %>" />
#     <meta property="og:type" content="website" />
#     <meta property="og:url" content="<%= request.original_url %>" />
#     <meta property="og:image" content="<%= meta_image %>" />
#     <meta property="og:description" content="<%= meta_description %>" />
#     <meta property="og:site_name" content="<%= meta_title %>" />

#     <!-- Twitter Card data -->
#     <meta name="twitter:card" content="summary_large_image">
#     <meta name="twitter:site" content="<%= DEFAULT_META["twitter_account"] %>">
#     <meta name="twitter:title" content="<%= meta_title %>">
#     <meta name="twitter:description" content="<%= meta_description %>">
#     <meta name="twitter:creator" content="<%= DEFAULT_META["twitter_account"] %>">
#     <meta name="twitter:image:src" content="<%= meta_image %>"> -->