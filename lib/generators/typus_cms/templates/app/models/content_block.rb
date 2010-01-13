class ContentBlock < ActiveRecord::Base

  ##
  # Validations
  #

  validates_uniqueness_of :block
  validates_presence_of :block, :content

  ##
  # Class Methods for Typus
  #

  def self.block
    [ ["Footer", "footer"], 
      ["Meta Description", "meta_description"], 
      ["Meta Keywords", "meta_keywords"] ]
  end

end