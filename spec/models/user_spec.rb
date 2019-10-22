require 'rails_helper'


RSpec.describe User, type: :model do
  subject { User.create(name: "Andrew", email: "TEST@TEST.com", password: "123456") }


  describe 'Validations' do
    # validation examples here
    it "valid user" do
      subject.password = "1234"
      expect(subject).to_not be_valid
    end
    it "validates password and password_confirmation" do
      expect(subject.password).to eql("123456")
    end
    it "emails must be unique" do 
      expect(subject).to be_valid
      user2 = User.create(name: "andrew", email: "TEST@TEST.com", password: "123456")
      expect(user2).to_not be_valid
    end
  end

  describe '.authenticate_with_credentials' do
    # examples for this class method here
    it "new authentication method works" do
      user = User.authenticate_with_credentials("TEST@TEST.com", "123456")
      expect(subject).eql? user
    end
    it "new authentication method works" do
      user = User.authenticate_with_credentials(" TEST@TEST.com ", "123456")
      expect(subject).eql? user
    end
    it "new authentication method works" do
      user = User.authenticate_with_credentials("TEsT@TEST.com", "123456")
      expect(subject).eql? user
    end
  end

end
