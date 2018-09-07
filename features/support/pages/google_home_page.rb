class GoogleHomePage
  include PageObject

  page_url FigNewton.base_url

  image(:googleLogo, :id => 'hplogo')

  def logo_visible?

    googleLogo_element.present?

  end
end