#!/usr/bin/env bash
# =======================================================================
# $Header: , 2019.01.12 $
# -----------------------------------------------------------------------
# Description:
#    Script to deploy a new Operator SDK Project
#
# Requirements:
#    /bin/sh is a symbolic link to /bin/bash
#
# Parameters:
#    None
#
# Notes:
#    Filename:
#    /operator_sdk_playground/scripts/new_op_project.sh
#
# Revision history:
# -----------------------------------------------------------------------
# Modified     Author(s)             Description
# -----------------------------------------------------------------------
# 2019.01.12   Saul Alanis           Created script
# =======================================================================
#set -x
# check if string is being passed and whether your GOPATH is set.
if [[ ! ${1} ]]; then printf "string required to set your new project name\n"; exit 1;
# https://github.com/golang/go/wiki/SettingGOPATH
elif [[ ! ${GOPATH} ]]; then printf "Please set your GOPATH env\n"; exit 1; fi

# Remove whitespace.
P=${1// /}
# Set to lowercase.
PROJECT=`sed -e 's/\(.*\)/\L\1/' <<< "$P"`

# Set your project path.
DIR=${GOPATH}/src/github.com/test-project/
# Check if project name exists?
if [[ ! -d $DIR ]]; then mkdir ${DIR}; exit 0;
elif [[ -d ${DIR}/${PROJECT} ]]; then
  printf "Project already exists, delete or select a different project name\n"; exit 1; fi

# initiate your operator project.
# Note that group should consist of lowercase alphabetical characters.
cd ${DIR} && operator-sdk new ${PROJECT} && \
cd ${DIR}/${PROJECT} && operator-sdk add api --api-version=${PROJECT}.canitoo/v1alpha1 --kind=AppService && \
operator-sdk add controller --api-version=${PROJECT}.canitoo/v1alpha1 --kind=AppService
