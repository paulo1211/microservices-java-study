#!/usr/bin/env bash

mkdir microservices
cd microservices

spring init \
--boot-version=2.5.2 \
--build=gradle \
--java-version=1.8 \
--packaging=jar \
--name=product-service \
--package-name=me.gnomeshell.microservices.core.product \
--groupId=me.gnomeshell.microservices.core.product \
--dependencies=actuator,webflux \
--version=1.0.0-SNAPSHOT \
--type=gradle-project \
product-service

spring init \
--boot-version=2.5.2 \
--build=gradle \
--java-version=1.8 \
--packaging=jar \
--name=review-service \
--package-name=me.gnomeshell.microservices.core.review \
--groupId=me.gnomeshell.microservices.core.review \
--dependencies=actuator,webflux \
--version=1.0.0-SNAPSHOT \
--type=gradle-project \
review-service

spring init \
--boot-version=2.5.2 \
--build=gradle \
--java-version=1.8 \
--packaging=jar \
--name=recommendation-service \
--package-name=me.gnomeshell.microservices.core.recommendation \
--groupId=me.gnomeshell.microservices.core.recommendation \
--dependencies=actuator,webflux \
--version=1.0.0-SNAPSHOT \
--type=gradle-project \
recommendation-service

spring init \
--boot-version=2.5.2 \
--build=gradle \
--java-version=1.8 \
--packaging=jar \
--name=product-composite-service \
--package-name=me.gnomeshell.microservices.composite.product \
--groupId=me.gnomeshell.microservices.composite.product \
--dependencies=actuator,webflux \
--version=1.0.0-SNAPSHOT \
--type=gradle-project \
product-composite-service

cd ..
