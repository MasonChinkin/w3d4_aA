# == Schema Information
#
# Table name: users
#
#  id         :bigint(8)        not null, primary key
#  username   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  poll_id    :integer
#

class User < ApplicationRecord
    has_many :authored_polls,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :Poll

    has_many :responses,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :Response

    has_many :answer_choices,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :AnswerChoice
end
