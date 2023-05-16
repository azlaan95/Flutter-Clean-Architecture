### Makefile for tasks app ###

SHELL := /bin/bash

gen: ## Generate files
	flutter pub run build_runner build --delete-conflicting-outputs

gen-domain: ## Generate files
	cd domain && flutter pub run build_runner build --delete-conflicting-outputs

gen-data: ## Generate files
	cd data && flutter pub run build_runner build --delete-conflicting-outputs

app-setup: ## Setup fvm and get Dependencies
	dart pub global activate fvm
	fvm install 3.7.8
	fvm use 3.7.8


pub-get: ## Clean Pub Get
	make app-clean
	cd data && flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs && cd ..
	cd domain && flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs && cd ..
	fvm flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs

app-clean: ## Clean Pub Get
	cd data && flutter clean && cd ..
	cd domain && flutter clean && cd ..
	flutter clean

fvm-get: ## Clean Pub Get
	make fvm-clean
	cd data && fvm flutter pub get && fvm flutter pub run build_runner build --delete-conflicting-outputs && cd ..
	cd domain && fvm flutter pub get && fvm flutter pub run build_runner build --delete-conflicting-outputs && cd ..
	fvm flutter pub get && fvm flutter pub run build_runner build --delete-conflicting-outputs

fvm-clean: ## Clean Pub Get
	cd data && fvm flutter clean && cd ..
	cd domain && fvm flutter clean && cd ..
	fvm flutter clean