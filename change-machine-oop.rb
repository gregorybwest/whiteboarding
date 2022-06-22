require 'rspec'

class ChangeMachine
  def change(num)
    change = [] 
    
    if num >= 25
      (num / 25).times do
        change << 25
        num -= 25
      end
    end
    if num >= 10
      (num / 10).times do
        change << 10
        num -= 10
      end
    end
    
    if num >= 5 
      change << 5
      num -= 5
    end
    if num <= 4
      num.times do
        change << 1
      end
    end

    return change
  end
  
end

RSpec.describe ChangeMachine do
  describe '#change' do
    it 'should return [1] when given 1' do
      machine = ChangeMachine.new
      expect(machine.change(1)).to eq([1])
    end
    it 'should return [1, 1] when given 2' do
      machine = ChangeMachine.new
      expect(machine.change(2)).to eq([1, 1])
    end
    it 'should return [1, 1, 1] when given 3' do
      machine = ChangeMachine.new
      expect(machine.change(3)).to eq([1, 1, 1])
    end
    it 'should return [1, 1, 1, 1] when given 4' do
      machine = ChangeMachine.new
      expect(machine.change(4)).to eq([1, 1, 1, 1])
    end
    it 'should return [5] when given 5' do
      machine = ChangeMachine.new
      expect(machine.change(5)).to eq([5])
    end
    it 'should return [10] when given 10' do
      machine = ChangeMachine.new
      expect(machine.change(10)).to eq([10])
    end
  end
end

change_machine = ChangeMachine.new
p change_machine.change(4)
p change_machine.change(104)
