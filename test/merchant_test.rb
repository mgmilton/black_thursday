require './test/test_helper'
require './lib/sales_engine'
require './lib/merchant'

class MerchantTest < Minitest::Test
  def setup
    @se = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })
  end

  def test_it_can_return_item_repo
    merchant = @se.merchants.find_by_id(12334112)

    assert_instance_of ItemRepository, merchant.items
  end
end
