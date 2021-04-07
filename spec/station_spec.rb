require 'station'

describe Station do
  subject {described_class.new(name: "Kingston", zone: 5)}

  it 'knows its name' do
    expect(subject.name).to eq("Kingston")
  end

  it 'knows its zone' do
    expect(subject.zone).to eq 5
  end
end