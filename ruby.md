# Ruby

## Puts

```ruby
puts
```
```ruby
puts "Oi " + nome
```
```ruby
puts "Oi #{ nome }"
```

## Gets

```ruby
gets
```
```ruby
name = gets
```

## Comentários

```ruby
# This is a comment
```

## Methods

```ruby
def method_name

end
```

## for

```ruby
for i in 1..10
 puts "#{ i }"
end
```
```ruby
for chacacter in text.chars
  puts chacacter
end
```
```ruby
break if true
```

## arrays

```ruby
numbers = [1, 2, 3, 4, 5]
```

## case

```ruby
case number
when 1
  # code here
when 2
  # code here
else
  # code here
end
```

## while

```ruby
while condition

end
```

## loop

```ruby
loop do

end
```

## .include?

```ruby
numbers = [1, 2, 3, 4, 5]

if numbers.include? 1
  puts "Tem o número dentro do array"
end
```

## require_relative

```ruby
require_relative 'file'
```

## require

```ruby
require 'file'
```

## each

```ruby
fruits = ['banana', 'orange', 'apple']

fruits.each do |fruit|
  puts fruit
end
```

## each_index

```ruby
fruits = ['banana', 'orange', 'apple']

fruits.each_index do |i|
  puts "#{ i } - #{ fruits[i] }"
end
```

## Classes

```ruby
class NomeDaClasse

end
```
```ruby
class NomeDaClasse

  attr_accessor :atr1, :atr2

end
```
```ruby
obj1 = NomeDaClasse.new
```
```ruby
def get_nome
  self.nome
end
```
```ruby
def get_nome
  @nome
end
```
```ruby
obj1.get_nome
```
