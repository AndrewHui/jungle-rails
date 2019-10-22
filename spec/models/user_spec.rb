require 'rails_helper'


RSpec.describe User, type: :model do
  subject { User.new(name: "Andrew", email: "TEST@TEST.com", password: "123456") }


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
      newSubject { User.new(name: "andrew", email: "TEST@TEST.com", password: "123456")}
      expect(newSubject).to_not be_valid
    end
    

  end

  describe '.authenticate_with_credentials' do
    # examples for this class method here
  end

end
