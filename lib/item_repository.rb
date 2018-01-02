require 'csv'
require './lib/item.rb'

class ItemRepository
  attr_reader :items

  def initialize(path, sales_engine = "")
    @items = []
    item_creator_and_storer(path)
  end

  def csv_opener(path)
    argument_raiser(path)
    CSV.open path, headers: true, header_converters: :symbol
  end

  def item_creator_and_storer(path)
    argument_raiser(path)
    csv_opener(path).each do |item|
      @items << Item.new(item, self)
    end
  end

  def all
    @items
  end

  def find_by_id(id)
    argument_raiser(id)
    @items.find {|item| item.id == id}
  end

  def find_by_name(name)
    argument_raiser(name)
    @items.find {|item| item.name.downcase == name.downcase}
  end

  def find_all_with_description(fragment)
    argument_raiser(fragment)
    @items.select {|item| item if item.description.downcase.include?(fragment.downcase)}
  end

  def find_all_by_price
  end

  def find_all_by_price_in_range
  end

  def find_all_by_merchant_id
  end

  def argument_raiser(data_type, desired_class = String)
    if data_type.class != desired_class
      raise ArgumentError
    end
  end

end
