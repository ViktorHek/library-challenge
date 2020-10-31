#require 'yaml'
#require './lib/library.yaml'
require './lib/visitor.rb'

describe Book do 
    let(:book) { instance_double('Book', title: 'En Bok', author: 'En Person', available: :true, return_date: '28/11' ) }


    it 'can\'t check out a book that isn\'t available' do
        allow(book).to receive(:available).and_return(false)
        expected_output = { status: false, message: 'book not available', date: '28/11' }
        expect(subject.check_out_book(false, '28/11')).to eq expected_output
    end

    it 'can check out an available book' do
        expected_output = { status: true, message: 'book available, return by ', date: Date.today } # ändra datumen till en bättre funktion
        expect(subject.check_out_book(true, '31/11')).to eq expected_output
    end
end