a = ["Matz", "Guido", "Dojo",  "Choi", "John"]
b = [5,6,9,3,1,2,4,7,8,10]
c = ["Dojo", 9]


=begin
++++++++++++++++++++++++++++
Methods to practice / recall
++++++++++++++++++++++++++++

puts a[0]
============================
returns / puts the object at the 0 index in array a

puts b.class
=============================
returns / puts the object class

#chaining methods
=============================
puts b.shuffle.join("-")

#puts a.to_s / to_h -> hash / to_ary
=============================
1. returns the object a as a string. Alias for .inspect
2. to_h → hash click to toggle source
Returns the result of interpreting ary as an array of [key, value] pairs.
[[:foo, :bar], [1, 2]].to_h
# => {:foo => :bar, 1 => 2}

#using .push
=============================

#using .pop
=============================

#using .length / .size()
=============================

#using .join
=============================
join(separator=$,) → str click to toggle source
Returns a string created by converting each element of the array to a string, 
separated by the given separator. If the separator is nil, it uses current $,. If both the separator and $, are nil, it uses empty string.

#using .shuffle / .shuffle!
==============================
.shuffle - shuffles into a new_ary
(also .shuffle(random: rng) -> self ary shuffle(random: Random.new(1)) )
.shuffle! - shuffles into self
(also .shuffle!(random: rng) -> new-ary shuffle(random: Random.new(1)) )

++++++++++
BUT also:+
++++++++++

.at or .fetch
=================================
1. at(index) → obj or nil

2. fetch(index) → obj
fetch(index, default) → obj
fetch(index) { |index| block } → obj
Tries to return the element at position index, but throws an IndexError exception if the referenced index lies outside of the array bounds. This error can be prevented by supplying a second argument, which will act as a default value.

.delete(value) / .delete_at(index)
==================================

.reverse / .reverse!
==================================
reverse → new_ary
Returns a new array containing self's elements in reverse order.
[ "a", "b", "c" ].reverse   #=> ["c", "b", "a"]
[ 1 ].reverse               #=> [1]

reverse! → ary
Reverses self in place.
a = [ "a", "b", "c" ]
a.reverse!       #=> ["c", "b", "a"]
a                #=> ["c", "b", "a"]

.sort
===================================
a.sort 
    
    is equivalent to:

a.sort { |x, y| x <=> y }

return -1 if x < y
return 0 if x = y
return 1 if x > y

 FURTHER EXPLAINED:

 When you have an array of, let's say, integers to sort, it's pretty straightforward for sort method
 to order the elements properly - smaller numbers first, bigger at the end. That's when you use 
 ordinary sort, with no block.

 But when you are sorting other objects, it may be needed to provide a way to compare (each) two of
 them. Let's say you have an array of objects of class Person. You probably can't tell if object 
 bob is greater than object mike (i.e. class Person doesn't have method <=> implemented). In that 
 case you'd need to provide some code to explain in which order you want these objects sorted to 
 sort method. That's where the block form kicks in.

people.sort{|p1,p2| p1.age <=> p2.age}
people.sort{|p1,p2| p1.children.count <=> p2.children.count}


.slice
===================================
slice(index) → obj or nil
slice(start, length) → new_ary or nil
slice(range) → new_ary or nil
Deletes the element(s) given by an index (optionally up to length elements) or by a range.
Returns the deleted object (or objects), or nil if the index is out of range.

# QUESTIONS: What's the difference between slice(index) and slice(range)?


.insert(index, obj...) → ary
===================================
Inserts the given values before the element with the given index.
a = %w{ a b c d }
a.insert(2, 99)         #=> ["a", "b", 99, "c", "d"]
a.insert(-2, 1, 2, 3)   #=> ["a", "b", 99, "c", 1, 2, 3, "d"]

values_at(index, index...) - moves around items in array as specified. Can chain onto join or other. 
=======================================================================
 -> returns an array with values specified in the param
e.g. a = %w{cat dog bear}; puts a.values_at(1,2).join(' and ') #=> "dog and bear"


=end

