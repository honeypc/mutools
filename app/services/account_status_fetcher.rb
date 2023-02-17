class AccountStatusFetcher < ::ApplicationService

  def initialize
  end

  def perform
    fetching_information
  end

  private


  def fetching_information
    login_page = agent.get('http://id.muhanoi.net/Davias2/')
    login_form = login_page.forms.first
    username_input = login_form.field_with(name: 'username')
    username_input.value = 'addams'
    password_input = login_form.field_with(name: 'password')
    password_input.value = '160289'

    logged_page = login_form.submit
    sleep(5)

    debugger

    # character = logged_page.find('li', value: 'Wednesday')
    # character_page = character.click()
    # sleep(5)


  end

  def agent
    @agent  ||= Mechanize.new
  end
end
