# test/test_init.rb
require_relative 'test_helper.rb'
require 'minitest/autorun'

class TestInit < Minitest::Test
  def test_url
    assert_equal UrliMe::LINKS_URL, 'https://urli.me/api/links'
  end
end
