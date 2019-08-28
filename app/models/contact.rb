class Contact < ApplicationRecord
  # Data constraints
  # Associations (between tables)
    # belongs_to
    # has_many
    # has_one
    # has_many :through
    # has_one :through
    # belongs_to :through
    # dependent

  has_many :notes, dependent: :destroy
  has_one :address, dependent: :destroy
  #has_one :note #(only one note allowed)

  # Validations
  # confirmations 
  #   two fields that should receive exactly the same content 
  # inclusion
  #   validate the attr included in a given set
  # length
  #   the length of the attr value
  # numericality
  #   only accepts numbers
  # presence
  #   to make sure the attr not empty

    validates :first_name, :last_name, :email, presence: true

  # uniqueness
    validates: email, uniqueness: true
    # one is allowed
  
  # Options
    # allow_nil
    # allow_blank
    # message
    #   display message when there is an error
    # on
    #   specify when it should happen
      validates: email, uniqueness: true, on: :create
  # callbacks
    # before_validations
    # after_validations
    # before_create
    # after_create
    # before_save
    #   before_save :encrypt_card_number
    # after_save

  # Attribute Serialization
    # belongs_to :account
    # serialize :hobbies, Array
  # Class Methods - self has to do with all of the contacts
  def self.by_name
    order(:first_name)
  end
  # Instance Methods - a particular contact, record
  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
