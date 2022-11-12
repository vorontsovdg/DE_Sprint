import requests
from bs4 import BeautifulSoup
import json

link = 'http://api.hh.ru/vacancies?text=python&per_page=100&page=0'



data = requests.get(link).json()

l = []

for item in data['items']:
    title = item.get('name', None)
    salary_from = item.get('salary', dict()).get('from', None)
    salary_to = item.get('salary', dict()).get('to', None)
    salary_currency = item.get('salary', dict()).get('currency')
    region = item.get('area', dict()).get('name', None)
    work_experience = item.get('snippet', dict()).get('requirement', None)
    tmpDict = {
        'title':title,
        'work_experience':work_experience,
        'salary':f'{salary_from} - {salary_to} {salary_currency}',
        'region':region
    }
    l.append(tmpDict)