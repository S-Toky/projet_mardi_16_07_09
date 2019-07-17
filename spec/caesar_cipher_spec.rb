require_relative '../lib/caesar_cipher'

describe "this is the decripte of lettre method" do
	it "should return the code" do
		expect(decripte("A", 5)).to eq("F")
		expect(decripte("v", 10)).to eq("f")
		expect(decripte("A", 5)).to eq("F")
		expect(decripte("2", 2)).to eq("2")
	end
end

describe "this is the decripte mesage method" do 
	it "should return the mesage" do 
		expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
		expect(caesar_cipher("it is the test", 2)).to eq("kv ku vjg vguv")
	end
end