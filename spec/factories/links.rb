FactoryGirl.define do
  factory :link do
    url "MyString"
    times_read 1
    factory :top_ten do
      sequence :times_read do |n|
        n
      end
    end
  end
end
