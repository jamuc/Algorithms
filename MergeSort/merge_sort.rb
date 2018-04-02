# Merge Sort is a divide and conquer algorithm from John von Neumann
# It divides the array, sorts them recursively and then merges the arrays
# back together again
class MergeSort
  def sort(array)
	n = array.length
	return array if array.length == 1

	index = n/2
	left = sort(array[0..index-1])
	right = sort(array[index..-1])
	return merge(left, right)
  end

  private def merge(left, right)
	c = []
	# While there are elements left in either array
	# compare the first ones and sort into array C
	loop do
	  if left.first <= right.first
		c << left.first
		left.shift
	  else
		c << right.first
		right.shift
	  end

	  break if left.empty? || right.empty?
	end

	return c.concat(left) if right.empty?
	return c.concat(right) if left.empty?
  end
end
