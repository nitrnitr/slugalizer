module Slugalizer
  def self.to_slug(string = '')
    return '' if string.nil?

    # strip the string
    ret = string.strip

    # blow away apostrophes and dots
    ret.gsub! /['`\.]/,""

    # replace all non alphanumeric with dashes
    ret.gsub! /\s*[^A-Za-z0-9]\s*/, '-'

    # convert double dashes to single
    ret.gsub! /-+/,"-"

    # strip off leading/trailing dashes
    ret.gsub! /\A[-\.]+|[-\.]+\z/,""

    # transform to downcase
    ret.downcase
  end
end
