require 'rails_helper'

RSpec.describe "Contents", type: :request do
  describe "GET /index" do
    it '@contentsが全てのデータをとってくること' do
      expect @content.to eq Content.all
    end
  end
end
