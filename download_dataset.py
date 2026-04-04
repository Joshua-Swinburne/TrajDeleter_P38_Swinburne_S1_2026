import argparse

import d4rl
import gym


def main():
	parser = argparse.ArgumentParser()
	parser.add_argument("--dataset", default="hopper-medium-expert-v0")
	args = parser.parse_args()

	env = gym.make(args.dataset)
	env.get_dataset()


if __name__ == "__main__":
	main()