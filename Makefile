LILYPOND ?= lilypond

SCORES := $(shell find balalaika medieval playford renaissance -type f -name '*.ly' | sort)

.PHONY: all score clean $(SCORES)

all: $(SCORES)

# Build one source, for example:
#   make score FILE=medieval/csm77/csm77_bilingual.ly
score:
	@test -n "$(FILE)" || { echo "Usage: make score FILE=path/to/score.ly"; exit 2; }
	@$(MAKE) --no-print-directory "$(FILE)"

# Each LilyPond source is also an individual Make target, for example:
#   make renaissance/villanella/villanella.ly
$(SCORES):
	@echo "Compiling $@"
	@$(LILYPOND) -ddelete-intermediate-files -o "$(@:.ly=)" "$@"
	@find balalaika medieval playford renaissance -type f \( -name '*.midi' -o -name '*.mid' \) -delete

# Keep tracked LilyPond sources and PDFs. Remove only ignored build by-products.
clean:
	@find balalaika medieval playford renaissance -type f \( \
		-name '*.midi' -o -name '*.mid' -o -name '*.log' -o -name '*.ps' \
		-o -name '*.eps' -o -name '*.tex' -o -name '*.texi' -o -name '*.texi-count' \
		-o -name '*.count' -o -name '*.systems' -o -name '*.profile' -o -name '*.dump' \
		-o -name '*.dvi' -o -name '*.png' -o -name '*.svg' -o -name '*.svgz' \
		-o -name '*.tmp' -o -name '*.bak' -o -name '*~' \
	\) -delete
