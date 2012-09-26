require 'spec_helper'

describe Picture, :vcr do
  describe 'images' do
    let(:picture) { FactoryGirl.create(:picture) }

    it 'should be uploaded to s3' do
      p picture.image.url
    end
  end
end


