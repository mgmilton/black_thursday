def most_sold_item_for_merchant(id)
  paid_invoices(id)
  flat_invoice_items(id)
  grouped_invoice_items(id)
  transformed(id)
  items_and_quantity(id)
  quantity_hash(id)
  all_item_by_ids(id)
end

def paid_invoices(id)
 @sales_engine.find_invoice_by_merchant_id(id).select do |invoice|
    invoice.is_paid_in_full?
  end
end

def flat_invoice_items(id)
  paid_invoices(id).map do |invoice|
    invoice.invoice_items
  end.flatten
end

def grouped_invoice_items(id)
  flat_invoice_items(id).group_by do |invoice_item|
    invoice_item.item_id
  end
end

def transformed(id)
  grouped_invoice_items(id).transform_values do |value|
    value.map do |invoice_item|
      invoice_item.quantity
    end
  end
end

def items_and_quantity(id)
  transformed(id).sort_by do |pair|
    pair.flatten![1]
  end
end

def quantity_hash(id)
  items_and_quantity(id).group_by do |value|
    value[1]
  end
end

def all_item_by_ids(id)
  quantity_hash(id).map do |item_id|
    @sales_engine.find_item_by_id(item_id)
  end
end
