module PagSeguro
  class Notification < Request
    attr_accessor :code, :type, :email, :token

    def initialize(code, type = nil, email = nil, token = nil)
      @code = code
      @type = type
      @email = email
      @token = token
    end

    def transaction
      PagSeguro::Transaction.new get("/transactions/notifications/#{code}")
    end
  end
end
