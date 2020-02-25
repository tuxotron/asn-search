from bs4 import BeautifulSoup
import sys, os

html = file = open(os.path.join(sys.path[0], "page.html"), "r")
soup = BeautifulSoup(html.read(), 'html.parser')
list_iterator = iter(soup.select("#search > table > tbody > tr"))

for tr in list_iterator:
    print(tr.select("td")[0].text)

