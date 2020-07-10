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

rsync -e "ssh -p 27810" \
    --include "${PROJECT}/docs/" \
    --exclude "${PROJECT}/*" \
    -aur ${PROJECT} root@144.34.218.151:/opt


echo "push to host..."

rsync -e "ssh -p 22" \
    --include "${PROJECT}/docs/" \
    --exclude "${PROJECT}/*" \
    -aur ${PROJECT} root@129.0.4.32:/app/waiyanai


echo "done"

