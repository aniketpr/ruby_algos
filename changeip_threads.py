import concurrent.futures
import requests
from getpass import getpass
import threading
import optparse
import time
import sys, traceback

proxies = []
with open('proxylist.txt') as f:
    for line in f:
        proxies.append(line.strip())

threads = []
# url = 'https://httpbin.org/ip'
url = 'https://awadhkesari.com'
def scan(word):
    try:
        response = requests.get(url,proxies={"http": word, "https": word})
       # print(response.json())
    except:
        #print("Skipping. Connnection error")
        print()


thread_count = 10

try:
	with concurrent.futures.ThreadPoolExecutor(max_workers=thread_count) as executor:
	    executor.map(scan, proxies)
except KeyboardInterrupt:
	print("Shutting down..........................")