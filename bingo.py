# importing required modules
import argparse
import click
# create a parser object
# parser = argparse.ArgumentParser(description = "An addition program")

# # add argument
# parser.add_argument("add", nargs = '*', metavar = "num", type = int,
# 					help = "All the numbers separated by spaces will be added.")

# # parse the arguments from standard input
# args = parser.parse_args()

# # check if add argument has any input data.
# # If it has, then print sum of the given numbers
# if len(args.add) != 0:
# 	print(sum(args.add))

@click.command()
@click.option('--name', prompt='Your name',
              help='The person to greet')
def hello( name):
    click.echo(f"Hello {name}!")

if __name__ == '__main__':
    hello()