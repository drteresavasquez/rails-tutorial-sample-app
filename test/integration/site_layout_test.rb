require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    # Note that the assertion for the root path verifies that there are two such links (one each for the logo and navigation menu element):
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", helf_path
    # Here Rails automatically inserts the value of about_path in place of the question mark (escaping any special characters if necessary), thereby checking for an HTML tag of the form
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
  end
end
