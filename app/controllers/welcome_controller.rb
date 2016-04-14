class WelcomeController < ApplicationController
  def index
  	@selectors = Selector.all.map{ |selector|  "#{selector.style}: #{selector.value}" }
  	@css_selector = @selectors.join(';')
  end
end
