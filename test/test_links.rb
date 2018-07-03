# test/test_links.rb
require_relative 'test_helper.rb'
require 'minitest/autorun'

class TestLinks < Minitest::Test
  def setup
    @data = YAML.load_file('config/application.yml')
    @urli_me_valid = UrliMe::Init.new(key: @data['SECRET_KEY'], pwd: @data['SECRET_PWD'])
    @urli_me_invalid = UrliMe::Init.new(key: 'asuhsuahuas', pwd: 'asuhuhasuashdudah')
  end

  def test_auth_all_links
    resp = @urli_me_valid.all_links
    assert_equal resp.response["status"], '200 OK'
  end

  def test_unauth_all_links
    resp = @urli_me_invalid.all_links
    assert_equal resp.response["status"], '401 Unauthorized'
  end

  def test_auth_get_link
    resp = @urli_me_valid.get_link(@data['SECRET_TOKEN'])
    assert_equal resp.response["status"], '200 OK'
  end

  def post_link
  end

  def update_link
  end

  def destroy_link
  end
end