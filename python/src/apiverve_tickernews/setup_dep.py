from setuptools import setup, find_packages

setup(
    name='apiverve_tickernews',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Ticker News is a stock news API that returns the latest news stories about one ticker symbol: US stocks and ETFs, stocks on 18 international markets, cryptocurrencies, futures and currency pairs. Each story comes with its headline, link, source, publisher and publication time, and is tagged as directly about the company or as a related market story. Paid plans add story summaries, headline tone and more stories per call.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/tickernews?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
