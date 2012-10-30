# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#  remember_token  :string(255)
#  admin           :boolean          default(FALSE)
#  uni             :boolean          default(FALSE)
#  semester        :boolean          default(FALSE)
#  vorlesung       :boolean          default(FALSE)
#  customer        :boolean          default(TRUE)
#  at_uni          :string(255)
#  at_semester     :string(255)
#  ects            :string(255)
#

require 'spec_helper'

describe User do
  pending "add some examples to (or delete) #{__FILE__}"
end
