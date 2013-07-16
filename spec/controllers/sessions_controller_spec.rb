require 'spec_helper'


describe SessionsController do
  let(:user) { create(:user) }

  before do
    @request.env['devise.mapping'] = Devise.mappings[:user];
    user.ensure_authentication_token!
  end

  describe 'POST create' do
    context 'no param' do
      before { post :create }
      it { response.response_code.should == 400 }
    end

    context 'wrong credentials' do
      before { post :create, email: user.email, password: '' }
      it {response.response_code.should == 401}
    end

    context 'normal email + password auth' do
      before { post :create, email: user.email, password: user.password }
      subject { JSON.parse response.body }
      it { should include 'user_id' }
      it { should include 'auth_token'}
      it { response.response_code.should == 201 }
    end
  end

  describe 'DELETE destroy' do
    context 'no param' do
      before { delete :destroy }
      it { response.response_code.should == 400 }
    end

    context 'wrong credentials' do
      before { delete :destroy, auth_token: '' }
      it { response.response_code.should == 401 }
    end

    context 'normal auth token param' do
      before { delete :destroy, auth_token: user.authentication_token }
      subject { JSON.parse response.body }
      it { should include 'user_id' }
      it { response.response_code.should == 200 }
    end
  end
end