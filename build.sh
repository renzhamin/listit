#!/bin/bash

npm --prefix='frontend' clean-install --include=dev
npm --prefix='frontend' run build
npm --prefix='backend' clean-install --include=dev
npm --prefix='backend' run build

cp -r frontend/dist backend/dist/
