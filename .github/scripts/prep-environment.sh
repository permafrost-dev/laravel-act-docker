platform=$(echo "${PLATFORM:?}" | cut -d '/' -f 2-3)

case $platform in
  386) platform='i386' ;;
  arm64) platform='arm64v8' ;;
  arm/v7) platform='arm32v7' ;;
esac

tags=$(echo "${TAGS:?}" | awk 'BEGIN{FS=OFS=","} NR==1{for (i=1;i<=NF;i++) $i="permafrostsoftware/laravel-node:"$i} 1')
ptags=$(echo "$TAGS" | awk -v platform="$platform" 'BEGIN{FS=OFS=","} NR==1{for (i=1;i<=NF;i++) $i="permafrostsoftware/laravel-node:"$i"-"platform} 1')
key=$(echo -n "$tags $ptags" | openssl dgst -sha256 | cut -d ' ' -f 2)

multi='linux/amd64,linux/arm64'

echo ::set-output name=tags::${tags}
echo ::set-output name=ptags::${ptags}
echo ::set-output name=key::${key}
echo ::set-output name=multi::${multi}