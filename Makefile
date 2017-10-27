
titus-v3-doc:
	echo "Generating documentation for Titus v3 API"
	protoc -I/usr/local/include -I. \
		-Isrc/main/proto \
		--doc_out=html,titus-v3-spec.html:doc \
		-otitus.protobin --include_imports --include_source_info \
		src/main/proto/netflix/titus/titus_job_api.proto
	protoc -I/usr/local/include -I. \
		-Isrc/main/proto \
		--doc_out=markdown,titus-v3-spec.md:doc \
		-otitus.protobin --include_imports --include_source_info \
		src/main/proto/netflix/titus/titus_job_api.proto

.PHONY: titus-v3-doc
