### Makefile for tasks app ###

SHELL := /bin/bash

gen: ## Generate files
	flutter pub run build_runner build --delete-conflicting-outputs

get: ## Clean Pub Get
	flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs

clean: ## Clean Pub Get
	flutter clean

fvm-gen: ## Generate files
	fvm flutter pub run build_runner build --delete-conflicting-outputs

fvm-get: ## Clean Pub Get
	fvm flutter clean && fvm flutter pub get && fvm flutter pub run build_runner build --delete-conflicting-outputs

fvm-clean: ## Clean Pub Get
	fvm flutter clean