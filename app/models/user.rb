class User < ApplicationRecord
  has_many :books

	validates :name, presence: true
	validates :email, presence: true
	validates :password, presence: true, length: { in: 6..20 }
	validates :cpf, presence: true, uniqueness: true

	after_create :activate_user
	before_validation :downcase_password
	after_validation :log_erros
	
  private

  def activate_user
    update_column(:active, true)
  end

	def downcase_password
		self.password = password.downcase if password.present?
	end

	def log_erros
		if errors.anu?
			Rails.logger.info("Validation failed: #{errors.full_messages.join(', ')}")
		end
	end
end
