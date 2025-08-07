hugo
cd public
git init
git remote add origin https://github.com/GoldMaple/GoldMaple.git
git checkout -b gh-pages
git add .
git commit -m "deploy"
git push -f origin gh-pages
cd ..