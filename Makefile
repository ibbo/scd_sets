# List of all LilyPond source directories
SOURCE_DIRS = src/strathspey src/jig src/reel src/march src/waltz

# Find all .ly files in the source directories
SOURCES = $(foreach dir, $(SOURCE_DIRS), $(wildcard $(dir)/*.ly))

# Construct the list of output files by replacing src/ with out/
OUTPUTS = $(patsubst src/%.ly, out/%.pdf, $(SOURCES))

# Default rule to make everything
all: $(OUTPUTS)

# Rule to convert .ly files to .pdf
out/%.pdf: src/%.ly
	mkdir -p $(@D)  # Ensure the output directory exists
	-lilypond --output=$(dir $@) $< || echo "Skipping $< due to an error"

# Rule to clean (delete) all generated files
clean:
	rm -rf out

update-sources:
	for file in $(SOURCES); do \
		convert-ly -e $$file; \
		done


.PHONY: all clean update-sources
