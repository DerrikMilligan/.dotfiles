#!/bin/bash

# Install all the PHP74 modules
paru -S \
  php74 \
  php74-bcmath php74-bz2 php74-calendar php74-cli php74-ctype php74-curl php74-exif php74-fileinfo php74-gd php74-gettext php74-iconv php74-imagick php74-json php74-mbstring php74-mcrypt php74-memcached php74-mysql php74-pcntl php74-pdo php74-pecl php74-posix php74-redis php74-simplexml php74-tokenizer php74-xdebug php74-xmlreader php74-xmlwriter php74-xsl php74-sqlite memcached phpactor

# Link the php74 executable as the main php executable
sudo mv /usr/bin/php /usr/bin/php82
sudo ln -s /usr/bin/php74 /usr/bin/php

mkdir ~/projects/

pushd ~/projects/

hg clone ssh://kallithea@code.applicantpro.io/tools/mercurial-kung-fu
sudo ln -s ~/projects/mercurial-kung-fu/mercurial-kung-fu.php /usr/local/bin/mkf
sudo chmod +x /usr/local/bin/mkf


hg clone ssh://kallithea@code.applicantpro.io/applicantpro/ats-codebase applicantpro

popd
