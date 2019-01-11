require('rspec')
require('save_princess')

describe('#save_princess') do
    it("returns path of bot to princess") do
        m = 3
        grid = ['---', '-m-', 'p--']
        expect(displayPathtoPrincess(m, grid)).to(eq("DOWN\nLEFT\n"))
    end
end