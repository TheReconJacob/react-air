require 'test_helper'

class UploadfileTest < ActionDispatch::IntegrationTest
  test "attatches file to temp storage" do
    file = fixture_file_upload(Rails.root.join("test/fixtures/files", "House.jpg"))
    post "/users/1/properties", params: {property: {image: file, description: "new with image",location: "USA"}}
    user = User.find(1)
    property = user.properties.last
    puts property.inspect
    assert property.image
  end
end
