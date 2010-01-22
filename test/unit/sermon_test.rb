require 'test_helper'

class SermonTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Sermon.new.valid?
  end
end
