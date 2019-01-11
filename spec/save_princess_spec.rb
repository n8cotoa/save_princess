require('rspec')
require('save_princess')

describe('#save_princess') do
    it('returns position of character') do
        grid = ['---', '-m-', 'p--']
        expect(getCharacterPosition('p', grid)).to(eq([2,0]))
    end
    it("returns path of bot to princess") do
        m = 3
        grid = ['---', '-m-', 'p--']
        expect(displayPathtoPrincess(m, grid)).to(eq("DOWN\nLEFT\n"))
    end
end