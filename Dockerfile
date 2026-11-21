FROM nginx:alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY player.html thumbnails.html index.html README.md STORYBOARD.md mood_board.png /usr/share/nginx/html/
COPY boards /usr/share/nginx/html/boards
COPY thumbnails /usr/share/nginx/html/thumbnails
COPY assets/underscore.mp3 /usr/share/nginx/html/assets/
COPY assets/vo-*.wav /usr/share/nginx/html/assets/

EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
