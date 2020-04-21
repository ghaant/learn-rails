require 'test_helper'

describe Visitor do
  let(:visitor_params) { { email: 'user@example.com' } }
  let(:visitor) { Visitor.new visitor_params }

  it 'is valid when create with valid parameters' do
    _(visitor).must_be :valid?
  end

  it 'is invalid without an email' do
    # Delete email before visitor let is called
    visitor_params.delete :email
    _(visitor).wont_be :valid? # Must not be valid without emails
    visitor.errors[:email].must_be :present? # Must have error for missing email
  end
end
