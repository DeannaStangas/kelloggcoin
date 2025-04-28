# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇
balances = {}

for transaction in blockchain
  from_user = transaction["from_user"]
  to_user = transaction["to_user"]
  amount = transaction["amount"]

  # Subtract amount from from_user's balance
  if from_user != nil
    if balances[from_user] == nil
      balances[from_user] = 0
    end
    balances[from_user] = balances[from_user] - amount
  end

  # Add amount to to_user's balance
  if balances[to_user] == nil
    balances[to_user] = 0
  end
  balances[to_user] = balances[to_user] + amount
end
#Print the results
bens_bal=balances["ben"]
brians_bal=balances["brian"]
evans_bal=balances["evan"]
anthony_bal=balances["anthony"]
puts "Ben's KelloggCoin balance is #{bens_bal}"
puts "Brian's KelloggCoin balance is #{brians_bal}"
puts "Evan's KelloggCoin balance is #{evans_bal}"
puts "Anthony's KelloggCoin balance is #{anthony_bal} "