require 'rubygems'
require 'rspec'
require_relative 'merge_sort.rb'

describe 'MergeSort' do
  subject { MergeSort.new }
  let(:unsorted_array) { [5, 10, 25, -3, 15, 201, 6, 0, -44] }

  describe '#sort' do
	let(:single_element_array) { [5] }
	context 'when the array only has one element' do
	  it 'returns the element as its own array' do
		expect(subject.sort(single_element_array)).to eq [5]
	  end
	end
	it 'sorts the elements in the array' do
	  expect(subject.sort(unsorted_array)).to eq unsorted_array.sort
	end
  end
end
