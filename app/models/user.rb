class User < ActiveRecord::Base
    has many :wallets
end