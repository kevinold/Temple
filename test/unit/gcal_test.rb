require 'test_helper'
require 'pp'

class GcalTest < ActiveSupport::TestCase
  test "can get calendar instance" do
    e = Gcal.new.get
    pp e
  end
end
