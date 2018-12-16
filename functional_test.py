from selenium import webdriver
import unittest

class NewVisitorTest(unittest.TestCase):

	def setUp(self):
		self.browser = webdriver.Firefox()
	
	def tearDown(self):
		self.browser.quit()
	
	def test_start_and_retrieve_list(self):
		# Edith has heard about a cool new online to-do app
		# She goes to check out its homepage
		self.browser.get('http://localhost:8000')
		
		# She notice the page title and header mention to-do list 
		self.assertIn('To-Do', self.browser.title)
		self.fail('Finish the test')


if __name__ == '__main__':
	unittest.main(warnings='ignore')