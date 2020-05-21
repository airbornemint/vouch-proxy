#!/bin/bash

# vouch config via Environmental Variables
# bare minimum to get vouch running with google
echo "starting VP with env vars"

export VOUCH_DOMAINS=bnf.net
export VOUCH_COOKIE_SECURE=false
export VOUCH_TESTING=true
export VOUCH_TEST_URLS="http://naga.bnf.net,http://login.bnf.net:9090,http://login.bnf.net:9090/logout?url=https://gogs.fs.bnf.net/vouch/vouch-proxy/src/bug/redirect_allowed"
export OAUTH_PROVIDER=google
export OAUTH_CLIENT_ID=721178122688-6734r7oqlcraq6jr9l8ksm8u17104g8g.apps.googleusercontent.com
export OAUTH_CLIENT_SECRET=Tvg8kNhM_DBCPH_XmztMh6Mr
export OAUTH_CALLBACK_URLS=http://login.bnf.net:9090/auth

echo $OAUTH_CALLBACK_URLS

./vouch-proxy