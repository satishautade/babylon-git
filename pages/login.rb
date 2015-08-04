require_relative 'base_page'

class Login < BasePage

  LOGIN_FORM = {name: 'sll'}
  USERNAME_INPUT = {id: 'userName'}
  PASSWORD_INPUT = {id: 'password'}
  LOGIN_BUTTON = {id: 'login'}
  TASKS_PAGE_FRAME = {id: 'frameMain'}

  def initialize(driver)
    super(driver)
    visit '/Logon'
    is_displayed?(LOGIN_FORM).should == true
  end

  def with(username,password)
    type(username, USERNAME_INPUT)
    type(password, PASSWORD_INPUT)
    click LOGIN_BUTTON
  end

  def landed_on_task_page?
    is_displayed? TASKS_PAGE_FRAME
  end
end