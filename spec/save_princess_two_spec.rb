require 'rspec'
require 'save_princess_two'

describe('#save_princess_two') do
    it('will receive user input') do 
        allow_any_instance_of(Object).to receive(:gets).and_return('input received')
        expect(gets.chomp).to eq('input received')
    end
    it('returns position of character') do
        grid = ['---', '-m-', 'p--']
        expect(getCharacterPosition('p', grid)).to(eq([2,0]))
    end
    it('will output the next move for the bot') do
        grid = ['-----',
                '-----',
                'p--m-',
                '-----',
                '-----']
        expect { nextMove(5, 2, 3, grid) }.to output("LEFT\n").to_stdout
    end
end