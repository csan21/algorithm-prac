# fibonacci iterative
def fib_it(num)
  array = [0, 1]
  count = 2
  until count > num
    array << array[-2] + array[-1]
    count += 1
  end
  array[num]
end
# fib_it(5) output: 5

# fibonacci recursion
def fib(num)
  return num if num == 0 || num == 1
  fib(num - 1) + fib(num - 2)
end
# fib(5) output: 5

# simple string reverse without .reverse
def hard_reverse(str)
  str.chars.reduce{ |x,y| y+x }
end
# hard_reverse("hello") output: "olleh"

# palindrome check
def palindrome?(str)
  str == str.reverse
end
# palindrome?("wow") output: true
# palindrome?("hello") output: false

# binary search recursion with 4 args, returns index of obj
def binary_search(array, obj, min = 0, max = array.length-1)
  mid = array[min..max].length / 2
  return nil if min == max
  return mid if array[mid] == obj

  if array[mid] < obj
    binary_search(array, obj, mid, max)
  elsif array[mid] > obj
    binary_search(array, obj, min, mid)
  end
end
# array = [:A, :B, :C, :D, :E, :F, :G, :H]
# binary_search(array, :E)


# fizzbuzz with 15
def fizzbuzz?(n)
  case
  when n % 15 == 0 then "FizzBuzz"
  when n % 5 == 0 then "Buzz"
  when n % 3 == 0 then "Fizz"
  end
end

# fizzbuzz without 15
def fizzbuzz?(n)
  case
  when n % 5 && n % 3 == 0 then "FizzBuzz"
  when n % 5 == 0 then "Buzz"
  when n % 3 == 0 then "Fizz"
  end
end


# bubble sort
def bubble_sort(arr)
  n = arr.length
  loop do
    swapped = false

    (n-1).times do |i|
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end
