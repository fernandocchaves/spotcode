RSpec.shared_context "logged_user", :shared_context => :metadata do
  before :each do 
    @logged_user = create(:user)
    sign_in @logged_user
  end
end