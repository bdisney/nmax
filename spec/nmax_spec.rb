require "spec_helper"

describe Nmax do
  let(:test_string) { StringIO.new('111assfgds222gsadfsda333') }
  let(:results)     { Nmax.parse(2, test_string) }

  it "returns integer values from parsed string" do
    expect(Nmax.parse(3, test_string)).to eq([333, 222, 111])
  end

  it 'returns numbers according to the limit' do
    expect(Nmax.parse(2, test_string)).to eq([333, 222])
  end

  it 'returns nothing than limit is zero' do
    expect(Nmax.parse(0, test_string)).to eq([])
  end

  it 'parsed integer values from file' do
    expect(Nmax.parse(4, File.open('./spec/files/sample_text.txt'))).to eq([444555, 222333, 556, 111])
  end

  it 'display results to stdout' do
    expect { Nmax.display_results(results) }.to output.to_stdout
    expect { Nmax.display_results(results) }.to output("333\n222\n").to_stdout
  end
end
