require './lib/polish_calc'
describe PolishCalc do
  context 'single operations' do 
    describe 'addition' do
      it 'returns the sum' do
        expect(PolishCalc.solve("+00")).to eq 0+0
        expect(PolishCalc.solve("+10")).to eq 1+0
        expect(PolishCalc.solve("+11")).to eq 1+1
      end
    end
    describe 'subtraction' do
      it 'returns the difference' do
        expect(PolishCalc.solve("-00")).to eq 0-0
        expect(PolishCalc.solve("-10")).to eq 1-0
        expect(PolishCalc.solve("-01")).to eq 0-1
      end
    end
    describe 'multiplication' do
      it 'returns the product' do
        expect(PolishCalc.solve("*00")).to eq 0*0
        expect(PolishCalc.solve("*51")).to eq 5*1
      end
    end

    describe 'division' do
      it 'returns the quotient' do
        expect(PolishCalc.solve("/42")).to eq 4/2
        expect(PolishCalc.solve("/62")).to eq 6/2
      end
    end
  end

  context 'many of operations' do
    describe 'multiple additions' do
      it 'returns the grand sum' do
        expect(PolishCalc.solve("++521")).to eq (5+2)+1
      end
    end
    
    describe 'multiple multiplication' do
      it 'returns the grand product' do
        expect(PolishCalc.solve("**521")).to eq (5*2)*1
      end
    end

    describe 'multiple division' do
      it 'returns the grand quotient' do
        expect(PolishCalc.solve("//521")).to eq (5/2)/1
      end
    end

    describe 'multiple subtraction' do
      it 'returns the grand difference' do
        expect(PolishCalc.solve("--521")).to eq (5-2)-1
      end
    end

    describe 'mixed operations' do
      it 'is evaluated correctly' do
        expect(PolishCalc.solve("/8*2+11")).to eq 2
      end
    end
  end
end