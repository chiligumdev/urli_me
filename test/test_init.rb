# test/test_init.rb
require_relative 'test_helper.rb'
require "minitest/autorun"

class TestInit < Minitest::Test
  def test_url
    assert "https://urli.me/api/links" == UrliMe::LINKS_URL
  end
end