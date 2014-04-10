require 'spec_helper'

describe User do
  it { should validate_presence_of :email }
  it { should allow_value('example@example.org', 'another.example@example.org').for(:email)}
  it { should validate_uniqueness_of :email }
  it { should validate_presence_of :password_digest }
  it { should ensure_length_of(:password).is_at_least(6) }
  it { should have_attached_file(:avatar) }
  it { should validate_attachment_content_type(:avatar).
                allowing('image/png', 'image/gif', 'image/jpg').
                rejecting('text/plain', 'text/xml') }
  #it { should validate_attachment_size(:avatar).
                #in(0..2.megabytes) }
end
