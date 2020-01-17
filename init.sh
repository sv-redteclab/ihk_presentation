git clone https://github.com/hakimel/reveal.js.git
git clone https://github.com/tooxoot/reveal_progress_bar.git
git clone https://github.com/tooxoot/reveal_agenda.git
git clone https://github.com/tooxoot/reveal_css_toggle.git

rm -rf reveal.js/index.html
rm -rf reveal.js/README.md
rm -rf reveal.js/.gitignore
mv reveal.js/* .
rm -rf -r reveal.js

mkdir plugin/reveal-progress-bar
mkdir plugin/reveal-agenda
mkdir plugin/reveal-css-toggle

mv reveal_progress_bar/reveal-progress-bar.js plugin/reveal-progress-bar
mv reveal_agenda/reveal-agenda.js plugin/reveal-agenda
mv reveal_css_toggle/reveal-css-toggle.js plugin/reveal-css-toggle

find reveal_progress_bar/*.css | sed 's/.*/mv & css/' | bash

rm -rf reveal_progress_bar
rm -rf reveal_agenda
rm -rf reveal_css_toggle

npm install

