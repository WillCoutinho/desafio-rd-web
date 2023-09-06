# frozen_string_literal: true

# PO do Dashboard
class Dashboard < SitePrism::Page
  element :header_dashboard, 'h6'
  @dashboard_title = 'OrangeHRM'

  def check_dashboard_page
    expect(header_dashboard.text).to eql 'Dashboard'
    assert_title(@dashboard_title)
  end
end
