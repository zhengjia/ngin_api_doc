#!/bin/bash

getting_started=$(find src/v0.1/getting_started -name "*.markdown")
sport_management=$(find src/v0.1/sport_management -name "*.markdown")
content_management=$(find src/v0.1/content_management -name "*.markdown")

pandoc --template=html.template --toc -r markdown $getting_started > output/getting_started.html
pandoc --template=html.template --toc -r markdown $content_management > output/content_management.html
pandoc --template=html.template --toc -r markdown $sport_management > output/sport_management.html