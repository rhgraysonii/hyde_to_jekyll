require 'rspec'
require './lib/hyde_to_jekyll'

describe "basic mathematica" do
  it "continues the axioms of mathematics" do
    expect(1 + 1).to eq 2
  end
end

describe HydeToJekyll do
  subject { HydeToJekyll::JekyllSetup.new }
  it "sets up the filesystem" do
    expect(subject.setup.include? "jekyll-boilerplate-master").to be true
  end
end
