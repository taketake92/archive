class LoginUser < ApplicationRecord
	# saveする前のアクション
	# 入力されたemailの大文字を小文字に変換
	# さらに！マークで変換処理を実行する
	before_save { self.email.downcase! }
	# name未入力禁止 文字数max50
	validates :nickname, presence: true, length: { maximum: 50 }
	# email未入力禁止、メールの正規表現のみ
	validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }
	# パスワード保存時に暗号化して保存
	has_secure_password
end
