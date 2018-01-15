default:
	python gen.py >colors/256_noir.vim

install: default
	cp colors/256_noir.vim ~/.vim/colors/
