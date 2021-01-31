import requests

proxies = {
  'http': 'http://103.124.137.173:3127',
  'https': 'http://103.124.137.173:3127',
}

req = requests.get('http://ipinfo.io/ip', proxies=proxies)
print (req.text)