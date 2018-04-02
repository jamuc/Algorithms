require 'rubygems'
require 'rspec'
require_relative 'merge_sort.rb'

describe 'MergeSort' do
  subject { MergeSort.new }
  let(:unsorted_array) { [5, 10, 25, -3, 15, 201, 6, 0, -44] }

  describe '#sort' do
	it 'sorts the elements in the array' do
	  expect(subject.sort(unsorted_array)).to eq unsorted_array.sort
	end
  end
end
