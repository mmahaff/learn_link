require 'spec_helper'

describe Micropost do
  let(:user) {FactoryGirl.create(:user) }
  before { @micropost = user.microposts.build(content: "This is my post") }

  it { should respond_to(:content) }
  it { should respond_to(:user_id) }
  it { should respond_to(:user) }

end
