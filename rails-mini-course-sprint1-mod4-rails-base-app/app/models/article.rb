class Article < ApplicationRecord
    # bring in methods from our created gem
    include Archiver
end
