require "pry"

# Inputs - array of hashes

# Steps
  # turn array into hash
  # add counts to hash
  # if items are same reduce them to same value while increasing counts
  # Return updated hash
# Outputs - hash with count added


def consolidate_cart(cart)
  consolidated = { }
  cart.each do |item|
    # binding.pry
    if 
    consolidated[item.keys[0]] = {
      price:item.values[0][:price],
      clearance:item.values[0][:clearance],
      count: 1
    }
    return consolidated
  end
end

def apply_coupons(cart, coupons)

end

def apply_clearance(cart)

end

def checkout(cart, coupons)

end
