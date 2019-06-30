import jwt

# Read file
#f = open("data.txt", "r")
#data = f.read()

data = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c'

key = 'my_secret_key'
decoded = jwt.decode(data, key, algorithms='HS256')

print(decoded)