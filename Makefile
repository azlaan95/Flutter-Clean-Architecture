### Makefile for tasks app ###

SHELL := /bin/bash

gen: ## Generate files
	fvm flutter pub run build_runner build --delete-conflicting-outputs

gen-domain: ## Generate files
	cd domain && fvm flutter pub run build_runner build --delete-conflicting-outputs

gen-data: ## Generate files
	cd data && fvm flutter pub run build_runner build --delete-conflicting-outputs

app-setup: ## Setup fvm and get Dependencies
	dart pub global activate fvm
	fvm install 3.7.8
	fvm use 3.7.8


pub-get: ## Clean Pub Get
	cd data && fvm flutter clean && fvm flutter pub get && cd ..
	cd domain && fvm flutter clean && fvm flutter pub get && cd ..
	fvm flutter clean && fvm flutter pub get
	cd data && fvm flutter pub run build_runner build --delete-conflicting-outputs && cd ..
	cd domain && fvm flutter pub run build_runner build --delete-conflicting-outputs && cd ..
	fvm flutter pub run build_runner build --delete-conflicting-outputs

app-clean: ## Clean Pub Get
	cd data && fvm flutter clean && cd ..
	cd domain && fvm flutter clean && cd ..
	flutter clean