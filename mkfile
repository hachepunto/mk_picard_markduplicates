MARK_DUPLICATES=`{./targets}

mark_duplicates:VE:	$MARK_DUPLICATES

results/indexbam/%.marked_duplicates.bam:D:	data/%.bam
	mkdir -p `dirname $target`
	picard-tools MarkDuplicates \
		I= $prereq \
		O=$target \
		M=$target".txt"
