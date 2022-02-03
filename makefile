all:
	stow --verbose --ignore=fish_variables --target=$$HOME --restow */
delete:
	stow --verbose --target=$$HOME --delete */
