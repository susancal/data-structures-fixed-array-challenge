require_relative 'fixed_array'

describe FixedArray do
  let(:fa) { FixedArray.new(4) }
  it "is an array" do
    expect(fa.arr).to eq([nil, nil, nil, nil])
  end

  it "sets an element at an index" do
    fa.set(1, "testing!")
    expect(fa.arr).to eq([nil, "testing!", nil, nil])
  end

  it "throws an error if you try to set an index out of bounds" do
    expect(fa.set(8, "whoa there")).to raise_error
  end
end
