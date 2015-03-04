describe "Solver" do
  let(:solver) { Solver.new }

  it "returns two numbers sorted from lowest to highest" do
    expect(solver.solve([2, 1])).to eq [1, 2]
  end

  it "returns three numbers sorted from lowest to highest" do
    expect(solver.solve([1, 3, 2])).to eq [1, 2, 3]
  end
end

class Solver
  def solve(inputs)
    @inputs = inputs
    sorted = []

    until @inputs.empty? do

      inputs.each_with_index do |input, index|
        move(index, sorted) if last_input?(index) || input_less_than_next?(index)
      end

    end

    sorted
  end

  def input_less_than_next?(index)
    @inputs[index] < next_input(index)
  end

  def next_input(index)
    @inputs[index + 1]
  end

  def last_input?(index)
    index + 1 == @inputs.length
  end

  def move(index, sorted)
    sorted << @inputs[index]
    @inputs.delete_at(index)
  end
end
