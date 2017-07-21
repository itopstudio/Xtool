#!/usr/bin/env bash

echo "start hexo deploy"
echo "hexo g..."
hexo g
echo "remove old public folder from server"
rm -r /home/git/hexo.git/public
echo "remove successful"
echo "cp new public folder to server"
cp -r /home/wwwroot/public /home/git/hexo.git/public 
echo "successful"
