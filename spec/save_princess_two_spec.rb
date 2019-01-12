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
    context('will output the next move for the bot') do
        it('when princess is on the left of the bot') do
            grid = ['-----',
                    '-----',
                    'p--m-',
                    '-----',
                    '-----']
            expect { nextMove(5, 2, 3, grid) }.to output("LEFT\n").to_stdout
        end
        it('when princess is on the right of the bot') do
            grid = ['-----',
                    '-----',
                    '--m-p',
                    '-----',
                    '-----']
            expect { nextMove(5, 2, 2, grid) }.to output("RIGHT\n").to_stdout
        end
        it('when princess is on the top') do
            grid = ['---p-',
                    '-----',
                    '---m-',
                    '-----',
                    '-----']
            expect { nextMove(5, 2, 3, grid) }.to output("UP\n").to_stdout
        end
        it('when princess is on the bottom') do
            grid = ['-----',
                    '-----',
                    '---m-',
                    '-----',
                    '---p-']
            expect { nextMove(5, 2, 3, grid) }.to output("DOWN\n").to_stdout
        end
    end
end