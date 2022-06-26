class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  has_one_attached :image #messagesテーブルとActiveStrageテーブルで管理された画像ファイルをアソシエーション

  validates :content, presence: true, unless: :was_attached?

  def was_attached?
    self.image.attached?
  end
end
