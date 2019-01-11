require 'rspec'
require 'save_princess_two'

describe('#save_princess_two') do
    it('will output the next move for the bot') do
        grid = ['-----',
                '-----',
                'p--m-',
                '-----',
                '-----']
        expect(nextMove(5, 2, 3, grid)).to(eq(""))
    end
end