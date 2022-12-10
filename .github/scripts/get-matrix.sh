platforms=(linux/amd64)
# linux/arm64
tags=('latest' 'jammy,2204' 'focal,2004')
matrix=()
for platform in "${platforms[@]}"; do
  for tag in "${tags[@]}"; do
    if [[ "$tag" =~ latest ]]; then
      base="ubuntu:22.04"
      file="jammy"
    elif [[ "$tag" =~ jammy ]]; then
      base="ubuntu:22.04"
      file="jammy"
    elif [[ "$tag" =~ focal ]]; then
      base="ubuntu:20.04"
      file="focal"
    fi
    build_args="type=full"
    matrix+=("{\"platform\": \"$platform\", \"tags\": \"$tag\", \"base\": \"$base\", \"build_args\": \"$build_args\", \"file\": \"$file\"}")
  done
done
echo "::set-output name=matrix::{\"include\":[$(echo "${matrix[@]}" | sed -e 's|} {|}, {|g')]}"
