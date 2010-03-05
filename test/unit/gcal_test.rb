require 'test_helper'

class GcalTest < ActiveSupport::TestCase
  test "can get calendar instance" do
    Gcal.new.get
  end
end
