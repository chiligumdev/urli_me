# test/test_links.rb
"""
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
    assert_equal resp.response['status'], '200 OK'
  end

  def test_unauth_all_links
    resp = @urli_me_invalid.all_links
    assert_equal resp.response['status'], '401 Unauthorized'
  end

  def test_auth_get_link
    resp = @urli_me_valid.get_link(@data['SECRET_TOKEN'])
    assert_equal resp.response['status'], '200 OK'
  end

  def test_unauth_get_link
    resp = @urli_me_invalid.get_link(@data['SECRET_TOKEN'])
    assert_equal resp.response['status'], '401 Unauthorized'
  end

  def test_auth_post_link
    resp = @urli_me_valid.create_link(@data['SECRET_LINK'])
    assert_equal resp.response['status'], '200 OK'
  end

  def test_unauth_post_link
    resp = @urli_me_invalid.create_link(@data['SECRET_LINK'])
    assert_equal resp.response['status'], '401 Unauthorized'
  end

  def test_auth_update_link
    resp = @urli_me_valid.update_link(@data['SECRET_TOKEN'], @data['SECRET_UP_LINK'])
    assert_equal resp.response['status'], '200 OK'
  end

  def test_auth_update_inexistent_link
    resp = @urli_me_valid.update_link('test-token', 'test-link')
    assert_equal resp.response['status'], '500 Internal Server Error'
  end

  def test_unauth_update_link
    resp = @urli_me_invalid.update_link(@data['SECRET_TOKEN'], @data['SECRET_UP_LINK'])
    assert_equal resp.response['status'], '401 Unauthorized'
  end

  def test_auth_destroy_link
    resp = @urli_me_valid.delete_link(@data['SECRET_DEL_TOKEN'])
    assert_equal resp.response['status'], '200 OK'
  end

  def test_auth_destroy_inexistent_link
    resp = @urli_me_valid.delete_link('test-token')
    assert_equal resp.response['status'], '500 Internal Server Error'
  end

  def test_unauth_destroy_link
    resp = @urli_me_invalid.delete_link(@data['SECRET_DEL_TOKEN2'])
    assert_equal resp.response['status'], '401 Unauthorized'
  end
end
"""