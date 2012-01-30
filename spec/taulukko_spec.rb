require 'taulukko'

describe Taulukko do
    before :each do
        @taulukko = Taulukko.new
    end

    it "should not put extra characters" do
        @taulukko << [1, 2]
        @taulukko << [3, 4]
        @taulukko.render.should == "1  2\n3  4"
    end

    it "should indent properly different cell lengths" do
        @taulukko << [1, 44, 12]
        @taulukko << ["1111", 2, 333]
        @taulukko.render.should == "1     44  12\n1111  2   333"
    end

    it "should not modify internal table data" do
        @taulukko << [1, 2]
        @taulukko << [3, 4]
        @taulukko.render.should == "1  2\n3  4"
        @taulukko.render.should == "1  2\n3  4"
    end

    it "should render tables with multicolumn size" do
        @taulukko << [1, 2, 3]
        @taulukko << [3, 4]
        @taulukko << [123, 7987, "lokoloko", "babababababa"]
        @taulukko.render.should == "1    2     3\n3    4\n123  7987  lokoloko  babababababa"
    end

    it "should render heading properly" do
        @taulukko.headings = ["h1", "h2", "h3"]
        @taulukko << [1, 2, 3]
        @taulukko << [4, 5]
        @taulukko << [66, 7777, 8888, 9999]
        @taulukko.render.should == "h1  h2    h3\n--  ----  ----  ----\n1   2     3\n4   5\n66  7777  8888  9999"
    end

    it "should print nothing when stores nothing" do
        @taulukko.render.should == ""
    end

    it "should print only header without rows" do
        @taulukko.headings = ["h1", "h2", "h3"]
        @taulukko.render.should == "h1  h2  h3\n--  --  --"
    end
end
