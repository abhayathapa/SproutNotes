require 'spec_helper'

describe User do
  before (:each) do
    @user = User.make
    @user.save!
  end

  it { should have_many(:how_tos).dependent(:destroy) }
  it { should have_many(:comments).dependent(:destroy) }
  it { should have_many(:questions).dependent(:destroy) }

  it {should validate_presence_of :email}
  it {should validate_presence_of :password}

end

# == Schema Information
#
# Table name: users
#
#  id                   :integer         not null, primary key
#  email                :string(255)     default(""), not null
#  encrypted_password   :string(128)     default(""), not null
#  reset_password_token :string(255)
#  remember_created_at  :datetime
#  sign_in_count        :integer         default(0)
#  current_sign_in_at   :datetime
#  last_sign_in_at      :datetime
#  current_sign_in_ip   :string(255)
#  last_sign_in_ip      :string(255)
#  created_at           :datetime
#  updated_at           :datetime
#

