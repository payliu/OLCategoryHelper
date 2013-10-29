//
// Math+Degrees.h
// OLCategoryHelper
//
// Created by Pay Liu on 2013/10/30.
// Copyright (c) 2013年 Octalord Information Inc. The MIT License
//
// http://iosdevelopertips.com/graphics/radians-to-degrees-and-degrees-to-radians.html

/**
 *  Radians to Degrees
 */
#define RADIANS_TO_DEGREES(radians) ((radians) * (180.0 / M_PI))

/**
 *  Degrees to radians
 */
#define DEGREES_TO_RADIANS(angle) ((angle) / 180.0 * M_PI)