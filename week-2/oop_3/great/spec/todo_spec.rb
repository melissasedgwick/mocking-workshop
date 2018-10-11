require "todo"

describe Todo do
  subject { described_class.new("say hi") }

  describe "creation" do

    it "creates a todo" do
      expect(subject).to be_instance_of described_class
    end

    it "defaults to incomplete" do
      expect(subject.complete).to eq false
    end
  end

  describe "set_complete" do
    it "changes status of complete" do
      subject.set_complete
      expect(subject.complete).to eq true
    end
  end
end
