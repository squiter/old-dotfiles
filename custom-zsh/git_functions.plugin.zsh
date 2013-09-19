function next_tag(){
   if [ -n "$1" ]; then
     TAG_NAME=$1
   else
     TAG_NAME='testing'
   fi

   VERSION=$(git tag | grep $TAG_NAME | awk -F _ '{ print $2}'| sort -n | tail -n 1)
   MINOR=$(echo $VERSION|awk -F . '{print $1"."$2}')
   BUGFIX=$(echo $VERSION|awk -F . '{print $3}')
   NEXTBUGFIX=`expr $BUGFIX + 1`
   NEXTVERSION=$TAG_NAME"_"$MINOR"."$NEXTBUGFIX
   echo "atual: "$TAG_NAME"_"$VERSION
   echo "next : "$NEXTVERSION

   if [ "$2" == "make" ]; then
      $(git tag $NEXTVERSION && git push --tags)
   fi
}

