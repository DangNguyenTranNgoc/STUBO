import jwt

# Read file
f = open("data.txt", "r")
data = f.read()

key = 'my_secret_key'
decoded = jwt.decode(data, key, algorithms='HS256')

print(decoded)