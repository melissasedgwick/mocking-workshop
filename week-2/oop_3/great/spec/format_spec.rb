require 'format'

describe TodoFormat do

  let(:todo1) { double :todo, description: "say hi", complete: false }
  let(:todo2) { double :todo, description: "say howdy", complete: false }
  let(:todo3) { double :todo, description: "say yo", complete: false }

  describe "showing todos as a string" do
    it "shows a list of 3 todos" do
      expect(subject.to_string([todo1, todo2, todo3]))
        .to eq("1. say hi not complete\n2. say howdy not complete\n3. say yo not complete")
    end
  end

end
