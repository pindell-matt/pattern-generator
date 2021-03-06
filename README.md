# Pattern Generator

This program is an exercise in creating patterns of variable length.

Users can submit case-insensitive pattern templates of any length, using the format: `XNXXN`
where `X` stands for an uppercase letter `A` through `Z` and `N` stands for a digit between `2` and `9`.

#### Generate

The generate method is then used to generate a pattern, based on the submitted template:

```ruby
pattern = PatternGenerator.new('xnxxn')
pattern.generate
# => P3QJ8

longer_pattern = PatternGenerator.new('xnxxnxxxn')
longer_pattern.generate
# => H7US8ZTT7
```

Numbers `1` and `0` and letters `I` and `O` have been excluded to reduce character-number confusion and
increase general pattern readability.

#### Number Count

Once a pattern has been generated, it's possible to see a total count of all `N` elements that the user submitted, by checking the `num_count`.

```ruby
pattern.num_count
# => 2
```
