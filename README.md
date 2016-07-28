# Spark PBS

## Introduction

This repository contains modified scripts to start a standalone Spark cluster
on a cluster managed by a PBS-derived scheduler (i.e: Torque).

## Requirements

- [Apache Spark](http://spark.apache.org/)
- [daemonize](http://software.clapper.org/daemonize/): Some issues arise when using `nohup` 
with pbsdsh, therefore any references to nohup is replaced by `daemonize`.

## Installation

1. Execute the configure script: `./configure`.
2. Install: `make install`.
