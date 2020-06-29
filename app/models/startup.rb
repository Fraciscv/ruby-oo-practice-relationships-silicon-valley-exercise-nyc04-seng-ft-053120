class Startup
    attr_reader :founder, :domain#, :pivot
    attr_accessor :name
    @@all = []
    def initialize(name, founder, domain)
        #returns a **string** that is the startup's name
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end

    def pivot(domain, name)
        @domain = domain
        @name = name
    end

    def self.all
        @@all
    end

    def self.find_by_founder(name)
        self.all.find {|startup| startup.founder == name}
    end

    def self.domain
        self.all.map {|startup| startup.domain}
    end
#venturecal obj, type as str, amount as float
    def sign_contract(vc_object, type, amount)
        FundingRound.new(self, vc_object, type, amount)
    end

    def num_funding_rounds
        self.funding_rounds.count
    end

    def total_funds
        total = 0
        self.funding_rounds.map {|fr| total += fr.investment}
    total
    end

    def funding_rounds
        FundingRound.all.select {|fr| fr.startup == self}
    end

    def investors
        self.funding_rounds.map {|fr| fr.venture_capitalist}.uniq
    end

    def big_investors
        self.investors.select {|i| i.total_worth > 1_000_000_000}
    end
end
