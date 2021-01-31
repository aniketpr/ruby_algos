# http://www.dailysmarty.com/posts/how-to-compress-images-with-the-imageoptimization-rubygem
# brew install optipng jpegoptim gifsicle pngquant
# gem install image_optimizer

require 'image_optimizer'

ImageOptimizer.new('images_com.jpg', quality: 25).optimize


