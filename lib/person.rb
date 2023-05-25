# your code goes here
class Person
    attr_reader :name, :bank_account, :happiness, :hygiene
  
    def initialize(name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
    end
  
    def bank_account=(amount)
      @bank_account = amount
    end
  
    def happiness=(points)
      @happiness = points.clamp(0, 10)
    end
  
    def hygiene=(points)
      @hygiene = points.clamp(0, 10)
    end
  
    def happy?
      happiness > 7
    end
  
    def clean?
      hygiene > 7
    end
  
    def get_paid(amount)
      self.bank_account += amount
      'all about the benjamins'
    end
  
    def take_bath
      self.hygiene += 4
      "♪ Rub-a-dub just relaxing in the tub ♫"
    end
  
    def work_out
      self.hygiene -= 3
      self.happiness += 2
      "♪ another one bites the dust ♫"
    end
  
    def call_friend(friend)
      self.happiness += 3
      friend.happiness += 3
      "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
  
    def start_conversation(person, topic)
      case topic
      when 'politics'
        self.happiness -= 2
        person.happiness -= 2
        'blah blah partisan blah lobbyist'
      when 'weather'
        self.happiness += 1
        person.happiness += 1
        'blah blah sun blah rain'
      else
        'blah blah blah blah blah'
      end
    end
  end
  
  RSpec.describe 'Person' do
    let(:stella) { Person.new('Stella') }
    let(:blanche) { Person.new('Blanche') }
    let(:people) { [stella, blanche] }
  
    describe 'initialization and attributes' do
      describe '.new' do
        it 'a new person is instantiated with a name' do
          expect { Person.new('Blake') }.not_to raise_error
        end
      end
  
      # Other test cases...
  
    end
  
    # Other describe blocks...
  
  end
  