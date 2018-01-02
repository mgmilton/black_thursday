require './test/test_helper'
require './lib/item_repository'

class ItemRepositoryTest < Minitest::Test
  def setup
    @items = ItemRepository.new("./data/items.csv")
  end

  def test_all_returns_items
    assert_equal @items.items, @items.all
  end

  def test_find_by_id_is_nil_when_passed_non_matching_id
    assert_nil @items.find_by_id("a")
  end

  def test_find_by_id_returns_instance_of_item
    assert_instance_of Item, @items.find_by_id("263395721")

    assert_equal "263395721", @items.find_by_id("263395721").id
  end

  def test_find_by_id_only_accepts_strings
    assert_raises ArgumentError do
      @items.find_by_id(1)
    end

    assert_raises ArgumentError do
      @items.find_by_id(["a", "b"])
    end
  end

  def test_find_by_name_returns_instance_of_item
    assert_instance_of Item, @items.find_by_name("Disney scrabble frames")

    assert_equal "Disney scrabble frames", @items.find_by_name("Disney scrabble frames").name
  end

  def test_find_by_name_only_accepts_strings
    assert_raises ArgumentError do
      @items.find_by_name(1)
    end

    assert_raises ArgumentError do
      @items.find_by_name(["a", "b"])
    end
  end

  def test_find_all_with_description_returns_an_array_of_all_instances_of_item
    assert_instance_of Array, @items.find_all_with_description("art")

    assert_instance_of Item, @items.find_all_with_description("art")[0]
  end

  def test_find_all_with_description_returns_empty_array_when_none_found
    assert_equal [], @items.find_all_with_description("adsfadsfd")
  end


  def test_find_all_with_description_only_accepts_strings
    assert_raises ArgumentError do
      @items.find_all_with_description(1)
    end

    assert_raises ArgumentError do
      @items.find_all_with_description(["a", "b"])
    end
  end

  def test_find_all_by_price_returns_an_array_of_all_instances_of_item
    assert_instance_of Array, @items.find_all_by_price(1200)

    assert_instance_of Item, @items.find_all_by_price(1200)[0]
  end

  def test_find_all_by_price_returns_empty_array_when_none_found
    assert_equal [], @items.find_all_by_price(0)
  end


  def test_find_all_by_price_only_accepts_integers
    assert_raises ArgumentError do
      @items.find_all_by_price("1")
    end

    assert_raises ArgumentError do
      @items.find_all_by_price(["a", "b"])
    end
  end

  def test_find_all_by_price_in_range_returns_an_array_of_all_instances_of_item
    assert_instance_of Array, @items.find_all_by_price_in_range(1000..1500)

    assert_instance_of Item, @items.find_all_by_price_in_range(1000..1500)[0]
  end

  def test_find_all_by_price_in_range_returns_empty_array_when_none_found
    assert_equal [], @items.find_all_by_price_in_range(-4..0)
  end


  def test_find_all_by_price_in_range_only_accepts_ranges
    assert_raises ArgumentError do
      @items.find_all_by_price_in_range("1")
    end

    assert_raises ArgumentError do
      @items.find_all_by_price_in_range(["a", "b"])
    end
  end

  def test_find_all_by_merchant_id_returns_an_array_of_all_instances_of_item
    assert_instance_of Array, @items.find_all_by_merchant_id("12334185")

    assert_instance_of Item, @items.find_all_by_merchant_id("12334185")[0]
  end

  def test_find_all_by_merchant_id_returns_empty_array_when_none_found
    assert_equal [], @items.find_all_by_merchant_id("0")
  end


  def test_find_all_by_merchant_id_only_accepts_ranges
    assert_raises ArgumentError do
      @items.find_all_by_merchant_id(1)
    end

    assert_raises ArgumentError do
      @items.find_all_by_merchant_id(["a", "b"])
    end
  end

  def test_csv_opener_only_accepts_strings
    assert_raises ArgumentError do
      @items.csv_opener(1)
    end

    assert_raises ArgumentError do
      @items.csv_opener(["a", "b"])
    end
  end

  def test_item_creator_and_storer_only_accepts_strings
    assert_raises ArgumentError do
      @items.item_creator_and_storer(1)
    end

    assert_raises ArgumentError do
      @items.item_creator_and_storer(["a", "b"])
    end
  end

  def test_argument_raiser_raises_argument_when_passed_a_float
    assert_raises ArgumentError do
      @items.argument_raiser(0.2)
    end
  end
end
