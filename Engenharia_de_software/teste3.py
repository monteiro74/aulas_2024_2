# -*- coding: utf-8 -*-
"""
Created on Wed Nov 13 13:32:42 2024

@author: usuario
"""

from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys

browser = webdriver.Firefox()

browser.get('http://www.yahoo.com')
assert 'Yahoo' in browser.title

# localiza o combo box de busca
elem = browser.find_element(By.NAME, 'p')  
elem.send_keys('selenium test' + Keys.RETURN)

# Encerra a execução do browser
# browser.quit()

