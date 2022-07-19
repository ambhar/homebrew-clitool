"""Setup.py for Huma SDK"""

from setuptools import setup, find_packages

# Pull in the package info
package_name = 'huma'

setup(
    name='CLI',
    version='1.0',
    description='Huma CLI Tool',
    author='amol',
    author_email='amol@snakescript.com',
    maintainer='amol@snakescript.com',
    maintainer_email='amol@snakescript.com',
    include_package_data=True,
    install_requires=[
        'click',
    ],
    license='Proprietary',
    keywords='',
    classifiers=[
        'Development Status :: 2 - Pre-Alpha',
        'Intended Audience :: Developers',
        'License :: Proprietary',
        'Natural Language :: English',
        'Programming Language :: Python :: 3.8',
        'Programming Language :: Python :: Implementation :: CPython'
    ],
    entry_points='''
        [console_scripts]
        bingo=bingo:hello
    '''
)
