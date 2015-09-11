# slugalizer

## Slugalizer allows you to easily create slugs with Ruby.

```
Slugalizer.to_slug '   a    string with lots of spaces   ' ===> 'a-string-with-lots-of-spaces'

      Slugalizer.to_slug 's#m$ w&irD s/u|=|=!!!'                                 ===> 's-m-w-ird-s-u'
      Slugalizer.to_slug 'a_string_with_dashes_and_under_scores'                 ===> 'a-string-with-dashes-and-under-scores'
      Slugalizer.to_slug '----   the cat is under the table!!!!!!!!!!!!!!'       ===> 'the-cat-is-under-the-table'
      Slugalizer.to_slug '-- !! This is s0m3 str1ng with numb3rs and letters :)' ===> 'this-is-s0m3-str1ng-with-numb3rs-and-letters'
```

It also allows you to call to_slug on any string:

```
    string = 'This is a slugalizable string :) !'
    string.to_slug ===> 'this-is-a-slugalizable-string'

```
