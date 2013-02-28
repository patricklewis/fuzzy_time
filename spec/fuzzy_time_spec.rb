require File.dirname(__FILE__) + "/../fuzzy_time"

describe Time do
  it "generates fuzzy times" do
    Time.gm(2012, 1, 14, 0, 0).fuzzy.should eq("twelve o'clock")
    Time.gm(2012, 1, 14, 3, 58).fuzzy.should eq("nearly four")
    Time.gm(2012, 1, 14, 12, 0).fuzzy.should eq("twelve o'clock")
    Time.gm(2012, 1, 14, 12, 01).fuzzy.should eq("shortly after twelve")
    Time.gm(2012, 1, 14, 12, 58).fuzzy.should eq("nearly one")
    Time.gm(2012, 1, 14, 11, 58).fuzzy.should eq("nearly twelve")
    Time.gm(2012, 1, 14, 15, 00).fuzzy.should eq("three o'clock")
    Time.gm(2012, 1, 14, 23, 58).fuzzy.should eq("nearly twelve")
  end
end
