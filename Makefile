.PHONY: all clean

CC = xelatex
CV_DIR = .
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

all: cv.pdf

cv.pdf: cv.tex $(CV_SRCS)
	$(CC) -output-directory=$(CV_DIR) $<

clean:
	rm -rf $(CV_DIR)/*.pdf $(CV_DIR)/*.log $(CV_DIR)/*.aux $(CV_DIR)/*.out 
