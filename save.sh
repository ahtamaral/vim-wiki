#!/bin/bash

if [[ `git status --porcelain` ]]; then
	printf "Changes were found on the repository. Saving on remote."
	git add .
	git commit -m "Adding zettels."
	git push
else
	printf "No changes were found on the repository. Nothing to do."
fi
