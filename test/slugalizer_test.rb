require 'helper'

scope Slugalizer do
  scope '#to_slug' do
    test 'returns an empty string if the given string is nil' do
      assert_equal '', Slugalizer.to_slug(nil)
    end

    test 'strips extra whitespaces' do
      assert_equal Slugalizer.to_slug('   a    string with lots of spaces   '), 'a-string-with-lots-of-spaces'
    end

    test 'replaces non alphanumeric characters with dashes' do
      assert_equal Slugalizer.to_slug('s#m$ w&irD s/u|=|=!!!'), 's-m-w-ird-s-u'
    end

    test 'removes apostrophes and dots' do
      assert_equal Slugalizer.to_slug("abc ' ' .. ' a..b"), 'abc-ab'
    end

    test 'transforms the string into downcase' do
      assert_equal Slugalizer.to_slug('A striNG wiTH upperCasES'), 'a-string-with-uppercases'
    end

    test 'transforms downscores into dashes' do
      assert_equal Slugalizer.to_slug('a_string_with_dashes_and_under_scores'), 'a-string-with-dashes-and-under-scores'
    end

    test 'removes leading-trailing dashes' do
      assert_equal Slugalizer.to_slug('----   the cat is under the table!!!!!!!!!!!!!!'), 'the-cat-is-under-the-table'
    end

    test 'converts double or more dashes into single dashes' do
      assert_equal Slugalizer.to_slug('string---with---lots-of-dashes-------'), 'string-with-lots-of-dashes'
    end

    test 'preserves alphanumeric characters' do
      assert_equal Slugalizer.to_slug('-- !! This is s0m3 str1ng with numb3rs and letters :)'), 'this-is-s0m3-str1ng-with-numb3rs-and-letters'
    end
  end
end
