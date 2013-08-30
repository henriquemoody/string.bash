test:
	@find tests -name '*.bats' | xargs -n1 bats
