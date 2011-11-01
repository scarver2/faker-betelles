module Faker
  class PhoneNumber
    class << self
      def phone_number(areacode_valid = false)
        str = Formats.rand
        if areacode_valid
          # Select from a range of mostly valid area codes
          str.gsub!('AAA', Random.new.rand(200..999).to_s )
        else
          str.gsub!('A', '#')
        end
        Faker.numerify(str)
      end
    end

    Formats = [
      'AAA-###-####',
  		'(AAA)###-####',
  		'1-AAA-###-####',
  		'AAA.###.####',
  		'AAA-###-####',
  		'(AAA)###-####',
  		'1-AAA-###-####',
  		'AAA.###.####',
  		'AAA-###-#### x###',
  		'(AAA)###-#### x###',
  		'1-AAA-###-#### x###',
  		'AAA.###.#### x###',
  		'AAA-###-#### x####',
  		'(AAA)###-#### x####',
  		'1-AAA-###-#### x####',
  		'AAA.###.#### x####',
  		'AAA-###-#### x#####',
  		'(AAA)###-#### x#####',
  		'1-AAA-###-#### x#####',
  		'AAA.###.#### x#####'
  	]
  end
end