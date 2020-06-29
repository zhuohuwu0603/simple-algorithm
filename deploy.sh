PROJECT=simple-algorithm

# copy file
echo "copy..."
cp /Users/dw/workspace/muyids/leetcode/questions.md .
cp -rf /Users/dw/workspace/muyids/leetcode/algorithms .
cp -rf /Users/dw/workspace/muyids/leetcode/chapter .

# build book
echo "build..."
gitbook build . docs

echo "push to github..."
git add .
git commit
git push

echo "push to host..."

cd ..

rsync -aur --progress --delete -e "ssh -p 27810" \
    --include "${PROJECT}/docs/" \
    --exclude "${PROJECT}/*" \
    -avr ${PROJECT} root@144.34.218.151:/opt

echo "done"
