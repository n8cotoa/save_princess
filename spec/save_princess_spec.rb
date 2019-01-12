require('rspec')
require('save_princess')

describe('#save_princess') do
    it('will receive user input') do 
        allow_any_instance_of(Object).to receive(:gets).and_return('input received')
        expect(gets.chomp).to eq('input received')
    end
    it('returns position of character') do
        grid = ['---', '-m-', 'p--']
        expect(getCharacterPosition('p', grid)).to(eq([2,0]))
    end
    context("returns path of bot to princess") do
        it("when princess is in lower left corner") do
            m = 3
            grid = ['---', '-m-', 'p--']
            expect { displayPathtoPrincess(m,grid) }.to output("DOWN\nLEFT\n").to_stdout
        end
        it("when princess is in lower right corner") do
            m = 3
            grid = ['---', '-m-', '--p']
            expect { displayPathtoPrincess(m,grid) }.to output("DOWN\nRIGHT\n").to_stdout
        end
        it("when princess is in upper left corner") do
            m = 3
            grid = ['p--', '-m-', '---']
            expect { displayPathtoPrincess(m,grid) }.to output("UP\nLEFT\n").to_stdout
        end
        it("when princess is in upper right corner") do
            m = 3
            grid = ['--p', '-m-', '---']
            expect { displayPathtoPrincess(m,grid) }.to output("UP\nRIGHT\n").to_stdout
        end
    end
end