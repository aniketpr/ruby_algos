from lxml.html import fromstring
import requests
from itertools import cycle
import traceback

proxies = []
with open('proxylist.txt') as f:
    for line in f:
        # inner_list = [elt.strip() for elt in line.split(',')]
        # in alternative, if you need to use the file content as numbers
        # inner_list = [int(elt.strip()) for elt in line.split(',')]
        proxies.append(line.strip())
# print(proxies)
# proxies = get_proxies()
proxy_pool = cycle(proxies)

# url = 'https://httpbin.org/ip'
url = 'https://awadhkesari.com'
for i in range(1,301):
    #Get a proxy from the pool
    proxy = next(proxy_pool)
    print("Request #%d"%i)
    try:
        response = requests.get(url,proxies={"http": proxy, "https": proxy})
       # print(response.json())
    except:
        #Most free proxies will often get connection errors. You will have retry the entire request using another proxy to work. 
        #We will just skip retries as its beyond the scope of this tutorial and we are only downloading a single url 
        print("Skipping. Connnection error")