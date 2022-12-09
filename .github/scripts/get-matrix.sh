platforms=(linux/amd64 linux/arm/v7 linux/arm64 multi)
tags=('latest' 'jammy,2204' 'focal,2004' 'latest-slim' 'jammy-slim,2204-slim' 'focal-slim,2004-slim')
matrix=()
for platform in "${platforms[@]}"; do
  for tag in "${tags[@]}"; do
    if [[ "$tag" =~ latest ]]; then
      base="ubuntu:20.04"
      file="focal"
    elif [[ "$tag" =~ jammy ]]; then
      if [ "$platform" = "linux/386" ]; then
        continue
      fi
      base="ubuntu:22.04"
      file="jammy"
    elif [[ "$tag" =~ focal ]]; then
      if [ "$platform" = "linux/386" ]; then
        continue
      fi
      base="ubuntu:20.04"
      file="focal"
    fi
    if [[ "$tag" =~ slim ]]; then
      build_args="type=slim"
    else
      build_args="type=full"
    fi
    matrix+=("{\"platform\": \"$platform\", \"tags\": \"$tag\", \"base\": \"$base\", \"build_args\": \"$build_args\", \"file\": \"$file\"}")
  done
done
echo "::set-output name=matrix::{\"include\":[$(echo "${matrix[@]}" | sed -e 's|} {|}, {|g')]}"
