require 'gratitudes'

# We use the class name here rather than a string
RSpec.describe Gratitudes do
  it "it reminds what the user is grateful for" do
    gratitude = Gratitudes.new
    gratitude.add("Be alive")
    result = gratitude.format()
    expect(result).to eq "Be grateful for: Be alive"
  end

  context "when there is an empty string as input" do
  it 'return nothing after the string' do
    gratitude = Gratitudes.new
    gratitude.add("")
    result = gratitude.format()
    expect(result).to eq "Be grateful for: "
  end # We would typically have a number of these examples.
end
end
