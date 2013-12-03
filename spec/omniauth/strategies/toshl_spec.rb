require 'spec_helper'

describe OmniAuth::Strategies::Toshl do

  subject do
    OmniAuth::Strategies::Toshl.new({})
  end

  context 'general' do
    it 'should be called toshl' do
      subject.options.name.should eq('toshl')
    end
  end

  context 'endpoints' do
    it 'has correct site' do
      subject.options.client_options.site.should eq('https://api.toshl.com')
    end

    it 'has correct authorize_url' do
      subject.options.client_options.authorize_url.should eq('https://toshl.com/oauth2/authorize')
    end

    it 'has correct token_url' do
      subject.options.client_options.token_url.should eq('https://toshl.com/oauth2/token')
    end
  end

end
