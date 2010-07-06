require 'spec_helper'

describe "/main_pages/support" do
  before(:each) do
    render 'main_pages/support'
  end

  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', %r[Find me in app/views/main_pages/support])
  end
end
