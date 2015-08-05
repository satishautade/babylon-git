require_relative 'spec_helper'
require_relative '../pages/login'

describe 'Login1' do

  before(:each) do
    @login = Login.new(@driver)
  end

  it 'success' do
    @login.with(ENV['username'],ENV['password'])
    @login.landed_on_task_page?.should be_truthy
  end

  it 'failure' do
    @login.with('poleary','wrongpass')
    @login.landed_on_task_page?.should be_falsey
  end
end