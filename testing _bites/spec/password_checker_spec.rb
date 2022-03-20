require 'password_checker'

RSpec.describe PasswordChecker do
  it "passes password checker" do
    password = PasswordChecker.new
    result = password.check("fairylights")
    expect(result).to eq true
  end
  it "fails password checker" do
    password = PasswordChecker.new
    expect { password.check("fairy") }.to raise_error "Invalid password, must be 8+ characters."
  end
end
