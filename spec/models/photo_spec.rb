require 'spec_helper'

describe Photo do
  it { should validate_presence_of :description }
  it { should have_attached_file(:image) }
  it { should validate_attachment_content_type(:image).
                allowing('image/png', 'image/gif', 'image/jpg').
                rejecting('text/plain', 'text/xml') }
end
