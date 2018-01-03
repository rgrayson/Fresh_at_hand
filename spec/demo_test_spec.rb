describe 'rspec_examples' do

require "rspec_demos"
 
describe RspecDemos do

 describe ".add" do
    context "given an empty string" do
      it "returns zero" do
        expect(RspecDemos.add("")).to eql(0)
      end
    end
  end
  
  describe "test1" do
    context "check for tst1" do
      it "returns 1" do
        expect(RspecDemos.tst1("tst1")).to eql(1)
      end
    end  
  end
  
  describe "test2" do
    context "check for Apple Dippers" do
      it "returns 1" do
        expect(RspecDemos.tst2("Apple Dippers")).to eql(1)
      end
    end  
  end
  
  
  describe "test4" do
    context "given '4'" do
      it "returns 4" do
        expect(RspecDemos.add("4")).to eql(4)
      end
    end  
  end
    
  describe "test10" do    
    context "given '10'" do
      it "returns 10" do
        expect(RspecDemos.add("10")).to eql(10)
      end
    end
  end

end

end
    
