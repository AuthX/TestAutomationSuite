class YahooHomePage
  include PageObject

  page_url FigNewton.base_url

   link(:yahooLogo, :id => 'uh-signin')

  def logo_visible?

    yahooLogo_element.present?

  end
end
