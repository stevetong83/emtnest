require 'spec_helper'

describe User do
  describe "Validation" do
    it { should validate_presence_of :email }
  end
end
