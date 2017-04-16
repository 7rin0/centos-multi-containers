#!/bin/bash

sudo composer global require drupal/coder
ln -nsf ~/.composer/vendor/drupal/coder/coder_sniffer/Drupal ~/.composer/vendor/squizlabs/php_codesniffer/CodeSniffer/Standards/Drupal
ln -nsf ~/.composer/vendor/drupal/coder/coder_sniffer/DrupalPractice ~/.composer/vendor/squizlabs/php_codesniffer/CodeSniffer/Standards/DrupalPractice
