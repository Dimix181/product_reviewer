
class ProductReviews::Catagories
  attr_accessor :name, :url, :subcatagories, :description

  @@all = []

  def self.all
      @@all
  end

  def all
      @@all
  end

    def self.create_from_hashes(product_list)
      product_list.each { |hash| self.new(hash) }
    end

    def initialize(hash)
      hash.each do |key,value|
        self.send("#{key}=", value)
          end
      @@all << self
      @subcatagories = []
    end

    def save (array)
  #    self.all.each{|obj| binding.pry  }
      @subcatagories << array
      @subcatagories.flatten!
    end

end