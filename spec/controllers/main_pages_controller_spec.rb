require 'spec_helper'

describe MainPagesController do

  #Delete these examples and add some real ones
  it "should use MainPagesController" do
    controller.should be_an_instance_of(MainPagesController)
  end


  describe "GET 'support'" do
    it "should be successful" do
      get 'support'
      response.should be_success
    end
  end
end
