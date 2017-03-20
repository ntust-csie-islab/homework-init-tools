git config --global user.email "mark19891107+islab@gmail.com"
git config --global user.name "ntust-csie-islab"

git clone https://github.com/ntust-csie-islab/%1.git
cd %1

git checkout -b gh-pages

echo ^<ul^> >> index.html
for /f %%a in (..\%2) do ( 
    mkdir %%a 
    echo "homework not found!!" >> %%a\index.html
    echo ^<li^>^<a href=^"%%a^"^>%%a^<^/a^>^<^/li^> >> index.html
)
echo ^<^/ul^> >> index.html

git add .
git commit -m 'init'
git push origin gh-pages