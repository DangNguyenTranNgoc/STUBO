import jwt

# Read file
#f = open("data.txt", "r")
#data = f.read()

data = 'eyJhbGciOiJIUzI1NiJ9.eyJqdGkiOiIxMjM0IiwiaWF0IjoxNTYyMjU1Mjg2LCJzdWIiOiJVc2VyIiwiaXNzIjoiU1RVQk8iLCJ1aWQiOiIzIiwidXNuIjoiQW4iLCJleHAiOjE1NjI2ODcyODZ9.AYYeOWJHk4AVGCRSxgMOf83uGOzZxMupv_x0HMMvfq4'

key = 'EsaokpSLq9szy7SEecQC5YiukF32JszeJzfIHuafYiSdOHy2ALFMOSR7mKFRF2gM'
decoded = jwt.decode(data, key, algorithms='HS256')

print(decoded)