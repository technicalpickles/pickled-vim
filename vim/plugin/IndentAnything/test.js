//
// Copyright 2006 Tye Zdrojewski 
// 
// Licensed under the Apache License, Version 2.0 (the "License"); you may not
// use this file except in compliance with the License. You may obtain a copy of
// the License at
// 
// 	http://www.apache.org/licenses/LICENSE-2.0
// 
// Unless required by applicable law or agreed to in writing, software distributed
// under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
// CONDITIONS OF ANY KIND, either express or implied. See the License for the
// specific language governing permissions and limitations under the License.
// 
//
//
// Sample Javascript test code. 
//
// This file is used to test changes to the IndentAnything plugin using the
// Javascript indentation script based on it.  The indentation in this file
// represents as much of the desired functionality as possible.  So, indenting
// this entire file should result in no changes in indentation.  When changes
// are made to the plugin, it can be tested by reindenting this file.  If it
// results in a change to the file, then there may be an unintended side-effect
// of the change.
//

//
if ( x )
    x;
x = { f +  // foo
        q
    go
}
r +
    bar + call( foo +
            bar
        // foo
        then
        bar
    )
ntnth  // TODO: this line should be at col 0

foo = {
    at : the,
    bar : tender
}


r
if (foo)
    // then
    // do something
    bar;
yo;
if (foo)
{
    //
    // then do something
    bar;
}
if (bar)
    /*
     * Comment on something. Comment on something. Comment on something.
     * Comment on something.     Comment on something.  
     *
     */
    yo;
foo

{
    line = getline() /* comment after code but spanning multiple lines seems to
                      * work pretty well.
                      */
    foo
}

window.prototype.foo = {
    a : hole,
    dink : wad
}

document.getElementById(
    string);

/*
 * :
 */
if (go()) // do it
    foo;
while (false) /* never do it */
    ;


/*** 
 *
 * blah
 */


switch (x) {
case 'x':
    window.alert(x);
    break;
default:
    break;
}

foo +
    //and + bar(
    //another
)
r +
    bar + call( foo +
            bar
        // foo
        then
        bar
    )
foo




/*****************************************************************************
 *
 * Known broken-ness:
 *
 */

if (yo) /*
         * dude
         *
         */
blah

if (
    something) /*
                */
    //
    // broken here.  This should be one level back.  But I'll argue (for now) that
    // the previous comment (which causes this) is bad style.
    //
