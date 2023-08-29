url=$1
before=`curl -s $url`
max_try_cnt=20



for i in $(seq 1 $max_try_cnt);do
  after=`curl -s $url`

  echo "please wait..."

  if [ $after != $before ]; then
    echo ""
    echo "$url is updated!"
    diff <(echo ${before}) <(echo ${after})
    /usr/bin/osascript -e 'display notification "wrapper is updated"'
    break;
  fi

  sleep 3;
  before=$after

  if [ $i = $max_try_cnt ]; then
    echo "timeout"
    /usr/bin/osascript -e 'display notification "timeout"'
    break;
  fi
done

