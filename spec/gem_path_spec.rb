require "spec_helper"

RSpec.describe GemPath do
  it "has a version number" do
    expect(GemPath::VERSION).not_to be nil
  end

  it "raises GemNotFound error when gem cannot be found" do
    expect { GemPath.find("notexists") }.to raise_error GemPath::GemNotFound
  end

  it "return directory of given gem" do
    result = GemPath.find("gem_path")

    expect(File.directory?(result)).to be true
    expect(result).to match %r(/gem_path)
  end
end
