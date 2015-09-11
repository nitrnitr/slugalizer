require 'helper'
require 'slugalizer/sugar'

scope Slugalizer do
  test 'defines String#to_slug' do
    string = 'This is a slugalizable string :) !'
    assert_equal 'this-is-a-slugalizable-string', string.to_slug
  end

  test 'adds NilClass#to_slug' do
    assert_equal '', nil.to_slug
  end
end
