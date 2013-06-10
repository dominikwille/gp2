git filter-branch --env-filter '
 
 an="$GIT_AUTHOR_NAME"
 am="$GIT_AUTHOR_EMAIL"
 cn="$GIT_COMMITTER_NAME"
 cm="$GIT_COMMITTER_EMAIL"
  
  if [ "$GIT_COMMITTER_EMAIL" = "your@email.to.match" ]
  then
  cn="dominikwille"
  cm="dominik.wille@fu-berlin.de"
  fi
  if [ "$GIT_AUTHOR_EMAIL" = "your@email.to.match" ]
  then
  an="Dominik Wille"
  am="dominik.wille@fu-berlin.de"
  fi
   
   export GIT_AUTHOR_NAME="$an"
   export GIT_AUTHOR_EMAIL="$am"
   export GIT_COMMITTER_NAME="$cn"
   export GIT_COMMITTER_EMAIL="$cm"
   '
