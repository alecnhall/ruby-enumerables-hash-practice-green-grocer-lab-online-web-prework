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
    if consolidated[item.keys[0]]
      consolidated[item.keys[0]][:count] += 1
    else
    consolidated[item.keys[0]] = {
      price:item.values[0][:price],
      clearance:item.values[0][:clearance],
      count: 1
    }
    end
  end
    return consolidated
end

def apply_coupons(cart, coupons)
  coupons.each do |coupon|
    if cart.keys.include? coupon[:item]
      if cart[coupon[:item]][count] >= coupon[:num]
        new_name = "#{coupon[:item]} W/ COUPON"
        if cart[new_name]
          cart[new_name][:count] += coupon[:num]
        else
          cart[new_name] = {
            count: coupon[:num],
            price: coupon[:cost]/coupon[:num],
            clearance: cart[coupon[:item]][:clearance]
          }
        end
        cart[coupon[:item]][:count -= coupon[:num]]
      end
    end
  end
  cart
end

def apply_clearance(cart)

end

def checkout(cart, coupons)

end
