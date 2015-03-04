describe "Solver" do
  let(:solver) { Solver.new }

  it "returns two numbers sorted from highest to lowest" do
    expect(solver.solve([2, 1])).to eq [1, 2]
  end
end

class Solver
  def solve(inputs)
    sorted_inputs = sort(inputs)
    unique(sorted_inputs)
  end
end
