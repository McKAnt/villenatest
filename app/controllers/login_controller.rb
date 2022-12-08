class LoginController < ApplicationController
  def create
    # TODO: Remove this weak security
    puts "TEST1 #{params['username']} #{params['password']}"
    if params['username'] != 'admin' || params['password'] != 'j6cWJNNmc4tMAnURCHtQyUhF3iJ6C42XpoTmr6hT'
      render json: {}, status: :unauthorized
      return
    end
    # Created with: https://jwt.io/#debugger-io?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IlRFTVBERUxFVEVNRSIsImlhdCI6MTUxNjIzOTAyMn0.Lrfq2hC5i0QAHavrMmamvVK9VAyoyuVBYSyPXBtM9Lc
    # signingSecret = 'asdfasdfasdfasdfasdfasdf12312312313';
    secret = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IlRFTVBERUxFVEVNRSIsImlhdCI6MTUxNjIzOTAyMn0.Lrfq2hC5i0QAHavrMmamvVK9VAyoyuVBYSyPXBtM9Lc';
    render json: {
      'apiToken': secret
    }
  end
end
