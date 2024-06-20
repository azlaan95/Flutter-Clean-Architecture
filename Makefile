### Makefile for tasks app ###

SHELL := /bin/bash

gen-f: ## Generate files
	flutter pub run build_runner build --delete-conflicting-outputs

gen-domain-f: ## Generate files
	cd domain && flutter pub run build_runner build --delete-conflicting-outputs

gen-data-f: ## Generate files
	cd data && flutter pub run build_runner build --delete-conflicting-outputs


gen: ## Generate files
	fvm flutter pub run build_runner build --delete-conflicting-outputs

gen-domain: ## Generate files
	cd domain && fvm flutter pub run build_runner build --delete-conflicting-outputs && cd ..

gen-data: ## Generate files
	cd data && fvm flutter pub run build_runner build --delete-conflicting-outputs && cd ..

app-setup: ## Setup fvm and get Dependencies
	dart pub global activate fvm
	fvm install 3.22.2
	fvm use 3.22.2
	make gen-env
	make pub-get


pub-get: ## Clean Pub Get
	make app-clean
	cd data && flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs && cd ..
	cd domain && flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs && cd ..
	flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs

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

clean-pods: ## To cleat pods and install it again
	-rm ios/Podfile.lock
	fvm flutter precache --ios
	cd ios && pod cache clean --all && pod cache clean 'FortifySec' --all && pod repo update && pod install

gen-env: ## Clean Pub Get
	-rm environments/lib/env/env_dev.g.dart
	-rm environments/lib/env/env_prod.g.dart
	cd environments && fvm flutter clean && fvm flutter pub get && fvm flutter pub run build_runner build --delete-conflicting-outputs && cd ..
