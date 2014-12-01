require 'rails_helper'

RSpec.describe Book, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"

  before do
    @book = Book.new(title: "Test")
  end

  subject { @book }

  it { should respond_to(:title) }
  it { should be_valid }

  describe "when title is not present" do
    before { @book.title = " " }
    it { should_not be_valid }
  end

  describe "when title is already taken" do
    before do
      book_with_same_title = @book.dup
      book_with_same_title.title = @book.title.upcase
      book_with_same_title.save
    end

    it { should_not be_valid }
  end

end
