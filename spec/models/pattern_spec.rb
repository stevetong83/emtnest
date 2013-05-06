require 'spec_helper'

describe Pattern do

  describe "Validation" do
    it { should validate_presence_of :version }
    it { should validate_presence_of :description }
  end
  
end
