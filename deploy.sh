PROJECT=simple-algorithm

# copy file
cp /Users/dw/workspace/muyids/leetcode/questions.md .
cp -rf /Users/dw/workspace/muyids/leetcode/algorithms .
cp -rf /Users/dw/workspace/muyids/leetcode/chapter .

# build book
gitbook build . docs

# push to github
git add .
git commit
git push

# push to my own Server
cd ..

rsync -e "ssh -p 27810" \
    --include "${PROJECT}/docs/" \
    --exclude "${PROJECT}/*" \
    -avr ${PROJECT} root@144.34.218.151:/opt



