# frozen_string_literal: true

class User < ApplicationRecord
  validates :email, presence: true

  def test
    update(password: password.split('').shuffle.join)
  end

  def self.duplicate(user)
    new_user = user.dup.attributes.slice('email', 'password')
    saved = User.create(new_user)
    saved.test
  end
end
