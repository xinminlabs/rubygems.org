# frozen_string_literal: true

require 'test_helper'

class StatsTest < SystemTest
  test "page params is not integer" do
    visit '/stats?page="3\">XSS"'
    assert page.has_content? "Stats"
  end
end
