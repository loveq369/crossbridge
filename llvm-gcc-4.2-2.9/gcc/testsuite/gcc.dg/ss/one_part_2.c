/* APPLE LOCAL file */
/* Copyright (C) 2005 Free Software Foundation.
   Contributed by Devang Patel  <dpatel@apple.com>  */

/* Test simple use of symbol repository.
   Include file one.h is supplied as one.ssh in this directory,
   so that ss.exp can pick it up as candidate for making 
   repository.  */
/* { dg-do assemble } */
#include "one.h"
extern int foo ()
{
}